#include "Oracle.h"

#include <iostream>
#include <boost/progress.hpp>

namespace kingdom{
    using namespace std;
    using namespace oracle::occi;

    COracle::COracle():m_env(0),m_con(0),m_stat(0),m_recordSet(0),m_conStr("127.0.0.1:1521/kbssacct")
    {
    }


    COracle::~COracle()
    {
    }

    int COracle::initialize(ContextPtr contextPtr)
    {
        m_contextPtr=contextPtr;
        m_ConnectionContext.ThreadNumber=contextPtr->getThreadNumber();
        m_conStr=m_contextPtr->getIP();
        m_conStr+="/"+m_contextPtr->getDBName();
        m_env=oracle::occi::Environment::createEnvironment();

        int res=0;
        if(m_env==NULL)
        {
            cout<<"createEnvironment error"<<endl;
            res=-1;
        }

        return res;
    }

    int COracle::connect()
    {
        m_con=m_env->createConnection(m_contextPtr->getUserName(),m_contextPtr->getPassword(),m_conStr);
        int res=0;

        if(m_con==NULL)
        {
            cout<<"createConnection error"<<endl;
            res=-1;
        }

        for(int i=0;i<m_ConnectionContext.ThreadNumber;++i)
        {
            oracle::occi::Connection *pConnection=m_env->createConnection(m_contextPtr->getUserName(),m_contextPtr->getPassword(),m_conStr);
            boost::thread::id id=m_ConnectionContext.ThreadGroup.create_thread(boost::bind(&COracle::updateRecord,this))->get_id();
            m_ConnectionContext.ConnectionPool[id]=pConnection;
        }

        cout<<"Build "<<m_ConnectionContext.ThreadNumber<<" threads."<<endl;

        return res;
    }

    int COracle::query()
    {
        int res=0;
        do
        {
            m_stat=m_con->createStatement();
            if(m_stat==NULL)
            {
                res=-1;
                cout<<"createStatment error"<<endl;
                break;
            }

            m_recordSet=m_stat->executeQuery("select count(*) from AUTH_INFO");
            m_recordSet->next();
            m_recordCount=m_recordSet->getInt(1);
            m_contextPtr->getResultPtr()->TotalRecordCount=m_recordCount;

            {
                boost::unique_lock<boost::mutex> locker(m_mutex);
                m_isReady=true;
                m_cv.notify_all();
            }

#ifdef UPDATE_AUTH_DATA
            m_recordSet=m_stat->executeQuery("SELECT USER_CODE,USER_ROLE,USE_SCOPE,AUTH_TYPE,AUTH_DATA from AUTH_INFO WHERE AUTH_DATA_TYPE=\'0\'");
#else
            m_recordSet=m_stat->executeQuery("SELECT USER_CODE,USER_ROLE,USE_SCOPE,AUTH_TYPE,AUTH_DATA from AUTH_INFO");
#endif

        } while(0);

        return res;
    }

    inline void COracle::fetchData(ST_DataRecord &record)
    {
        strcpy(record.UserCode,m_recordSet->getString(1).c_str());
        record.UserRole=m_recordSet->getString(2).at(0);
        record.UserScope=m_recordSet->getString(3).at(0);
        record.AuthType=m_recordSet->getString(4).at(0);
        strcpy(record.AuthData,m_recordSet->getString(5).c_str());
        record.AuthNewData[0]=0;
    }

    void COracle::updateRecord()
    {
        {
            boost::unique_lock<boost::mutex> locker(m_mutex);
            while(!m_isReady)
                m_cv.wait(locker);
        }

        std::ostringstream oss;
        ST_DataRecordPtr recordPtr;
        oracle::occi::Connection *pConnection=m_ConnectionContext.ConnectionPool[boost::this_thread::get_id()];
        oracle::occi::Statement *stat=pConnection->createStatement();

        stat->setAutoCommit(false);
        int count=0;
        while(m_runFlag||m_list.size()>0)
        {
            oss.str("");
            count=0;
            {
                boost::mutex::scoped_lock locker(m_mutex);
                std::list<ST_DataRecordPtr>::iterator iter=m_list.begin();
                while(iter!=m_list.end())
                {
                    recordPtr=*iter;
#ifdef UPDATE_AUTH_DATA
                    oss<<"UPDATE AUTH_INFO SET AUTH_DATA_TYPE=\'1\',AUTH_DATA=\'"<<recordPtr->AuthNewData<<"\' WHERE USER_CODE="<<recordPtr->UserCode<<" and USER_ROLE=\'"<<recordPtr->UserRole<<"\' AND USE_SCOPE=\'"<<recordPtr->UserScope<<"\' AND AUTH_TYPE=\'"<<recordPtr->AuthType<<"\'";
#else
                    oss<<"UPDATE AUTH_INFO SET AUTH_DATA=\'"<<recordPtr->AuthData<<"\' WHERE USER_CODE="<<recordPtr->UserCode<<" and USER_ROLE=\'"<<recordPtr->UserRole<<"\' AND USE_SCOPE=\'"<<recordPtr->UserScope<<"\'";
#endif
                    ++iter;
                    m_list.pop_front();

                    if(++count>0)
                    {
                        break;
                    }
                }
            }

            this->notify(m_mutex,m_cv);
            if(count>0)
            {
                stat->executeUpdate(oss.str());
                count=0;
            }
            else{
                boost::this_thread::sleep(boost::posix_time::millisec(500));
            }
        }

        try{
            pConnection->terminateStatement(stat);
            pConnection->commit();
        }
        catch(oracle::occi::SQLException &e)
        {
            cout<<boost::this_thread::get_id()<<" error:"<<e.what()<<endl;
        }
    }

    void COracle::traversalResult()
    {
        ST_DataRecord record;
        cout<<"processing "<<m_recordCount<<" records......"<<endl;
        boost::progress_display pd(this->m_recordCount);
        int res=0;
        std::ostringstream oss;

        while(m_recordSet->next())
        {
            this->fetchData(record);

            if((res=reEncrypt(record))<0)
            {
                ++m_contextPtr->getResultPtr()->FailingRecordCount;
                oss.str("");
                oss<<record.UserCode<<":error_code="<<res;
                m_contextPtr->getResultPtr()->FailingInfo.push_back(oss.str());
            }
            else{
                ++m_contextPtr->getResultPtr()->SuccessfulRecordCount;

                boost::mutex::scoped_lock locker(m_mutex);
                m_list.push_back(ST_DataRecordPtr(new ST_DataRecord(record)));
            }

            ++pd;
            this->wait(m_mutex,m_cv);
        }

        m_runFlag=false;
    }

    int COracle::close()
    {
        int res=0;
        try{
            if(m_recordSet!=NULL)
            {
                m_stat->closeResultSet(m_recordSet);
                m_recordSet=NULL;
            }
            if(m_stat!=NULL)
            {
                m_con->terminateStatement(m_stat);
                m_stat=NULL;
            }
            this->m_ConnectionContext.ThreadGroup.join_all();
            if(m_con!=NULL)
            {
                m_env->terminateConnection(m_con);
                m_con=NULL;
            }
            ST_ConnectionContext<oracle::occi::Connection*>::ConnectionPoolMap::iterator iter=m_ConnectionContext.ConnectionPool.begin();
            while(iter!=m_ConnectionContext.ConnectionPool.end())
            {
                m_env->terminateConnection(iter->second);
                ++iter;
            }
        }
        catch(oracle::occi::SQLException &e)
        {
            cout<<"close error:"<<e.what()<<endl;
            res=-1;
        }

        return res;
    }

    void COracle::unInitialize()
    {
        if(m_env!=NULL)
        {
            m_env->terminateEnvironment(m_env);
            m_env=NULL;
        }
    }
}
