#include "SqlServer.h"
#include <iostream>
#include <sstream>

#include <boost/progress.hpp>
#include <boost/thread/shared_lock_guard.hpp>

using namespace std;

namespace kingdom{

#ifdef _WIN32
    CSqlServer::CSqlServer()
    {
    }

    CSqlServer::~CSqlServer()
    {
    }

    int CSqlServer::initialize(ContextPtr contextPtr)
    {
        m_contextPtr=contextPtr;
        m_ConnectionContext.ThreadNumber=contextPtr->getThreadNumber();
        int res=0;

        ::CoInitialize(NULL);
        try
        {
            res=m_readConnection.CreateInstance("ADODB.Connection");
            for(size_t i=0;i<m_ConnectionContext.ThreadNumber;++i)
            {
                _ConnectionPtr conPtr;
                conPtr.CreateInstance("ADODB.Connection");
                boost::thread::id id=m_ConnectionContext.ThreadGroup.create_thread(boost::bind(&CSqlServer::updateRecord,this))->get_id();
                m_ConnectionContext.ConnectionPool[id]=conPtr;
            }

            cout<<"Build "<<m_ConnectionContext.ThreadNumber<<" threads."<<endl;
        }
        catch(::_com_error e)
        {
            res=-1;
            cout<<"create connection instance error:"<<e.ErrorMessage()<<endl;
        }

        return res;
    }

    int CSqlServer::connect()
    {
        int res=0;
        try
        {
            /* 连接数据库 */
            ::_bstr_t strConnect="uid=;pwd=;Server=127.0.0.1;Provider=SQLOLEDB;Database=kbssacct;";
            ::_bstr_t name=m_contextPtr->getUserName().c_str();
            ::_bstr_t pwd=m_contextPtr->getPassword().c_str();

            res=m_readConnection->Open(strConnect,name,pwd,::adModeUnknown);

            ST_ConnectionContext<_ConnectionPtr>::ConnectionPoolMap::iterator iter=m_ConnectionContext.ConnectionPool.begin();
            while(iter!=m_ConnectionContext.ConnectionPool.end())
            {
                res|=iter->second->Open(strConnect,name,pwd,::adModeUnknown);
                ++iter;
            }
        }
        catch(::_com_error e)
        {
            res=-1;
            cout<<"connect DataBase=kbssacct error:"<<e.ErrorMessage()<<endl;
        }

        return res;
    }

    int CSqlServer::close()
    {
        if(m_recordSet!=NULL)
        {
            m_recordSet->Close();
        }
        m_readConnection->Close();

        m_ConnectionContext.ThreadGroup.join_all();
        ST_ConnectionContext<_ConnectionPtr>::ConnectionPoolMap::iterator iter=m_ConnectionContext.ConnectionPool.begin();
        while(iter!=m_ConnectionContext.ConnectionPool.end())
        {
            iter->second->Close();
            ++iter;
        }

        return 0;
    }

    int CSqlServer::query()
    {
        int res=0;
        try
        {
            const char* szSql="SELECT USER_CODE,USER_ROLE,USE_SCOPE,AUTH_TYPE,AUTH_DATA from AUTH_INFO WHERE AUTH_DATA_TYPE=\'0\'";
            do{
                //创建记录对象
                if((res=m_recordSet.CreateInstance(__uuidof(Recordset)))!=0)
                {
                    break;
                }

                if((res=m_recordSet->Open(szSql,m_readConnection.GetInterfacePtr(),adOpenStatic,adLockOptimistic,adCmdText))!=0)
                {
                    break;
                }

                m_recordCount=m_recordSet->GetRecordCount();
                m_contextPtr->getResultPtr()->TotalRecordCount=m_recordCount;

                {
                    boost::unique_lock<boost::mutex> locker(m_mutex);
                    m_isReady=true;
                    m_cv.notify_all();
                }

            } while(0);
        }
        catch(_com_error e)
        {
            cout<<"query AUTH_INFO error:"<<e.ErrorMessage()<<endl;
            res=-1;
        }

        return res;
    }

    inline void CSqlServer::updateRecord()
    {
        {
            boost::unique_lock<boost::mutex> locker(m_mutex);
            while(!m_isReady)
                m_cv.wait(locker);
        }

        std::ostringstream oss;
        ST_DataRecordPtr recordPtr;
        int count=0;
        _ConnectionPtr con=m_ConnectionContext.ConnectionPool[boost::this_thread::get_id()];

        this->beginTrans(con);
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
                    oss<<"UPDATE AUTH_INFO SET AUTH_DATA_TYPE=\'1\',AUTH_DATA=\'"<<
#ifdef UPDATE_AUTH_DATA
                        recordPtr->AuthNewData
#else
                        recordPtr->AuthData
#endif
                        <<"\' WHERE USER_CODE="<<recordPtr->UserCode<<" and USER_ROLE=\'"<<recordPtr->UserRole<<"\' AND USE_SCOPE=\'"<<recordPtr->UserScope<<"\' AND AUTH_TYPE=\'"<<
                        recordPtr->AuthType<<"\';";
                    ++iter;
                    m_list.pop_front();

                    if(++count>=10)
                    {
                        break;
                    }
                }
            }

            this->notify(m_mutex,m_cv);
            if(count>0)
            {
                con->Execute(oss.str().c_str(),NULL,adCmdText);
                count=0;
            }
            else{
                boost::this_thread::sleep(boost::posix_time::millisec(500));
            }
        }
        this->commitTrans(con);
    }

    inline void CSqlServer::fetchData(ST_DataRecord &record)
    {
        snprintf(record.UserCode,sizeof(record.UserCode),"%lld",m_recordSet->GetCollect("USER_CODE").llVal);
        record.UserRole=*m_recordSet->GetCollect("USER_ROLE").pcVal;
        record.UserScope=*m_recordSet->GetCollect("USE_SCOPE").pcVal;
        record.AuthType=*m_recordSet->GetCollect("AUTH_TYPE").pcVal;
        record.AuthNewData[0]=0;
        strcpy(record.AuthData,((_bstr_t)m_recordSet->GetCollect("AUTH_DATA")));
    }

    void CSqlServer::traversalResult()
    {
        int res=0;
        ST_DataRecord record;
        cout<<"processing "<<m_recordCount<<" records......"<<endl;
        boost::progress_display pd(m_recordCount);
        std::ostringstream oss;

        while(!m_recordSet->adoEOF)
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
            m_recordSet->MoveNext();
        }
        m_runFlag=false;
    }

    void CSqlServer::unInitialize()
    {
        ::CoUninitialize();
    }

    inline void CSqlServer::beginTrans(_ConnectionPtr con)
    {
        try
        {
            con->Execute("BEGIN TRAN;",NULL,adCmdText);
        }
        catch(::_com_error e)
        {
            cout<<e.ErrorMessage()<<endl;
        }
    }

    inline void CSqlServer::commitTrans(_ConnectionPtr con)
    {
        try
        {
            con->Execute("COMMIT;",NULL,adCmdText);
        }
        catch(::_com_error e)
        {
            cout<<e.ErrorMessage()<<endl;
        }
    }

#endif
}
