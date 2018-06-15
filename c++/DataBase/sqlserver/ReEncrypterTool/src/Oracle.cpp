#include "Oracle.h"
#include <iostream>

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
            m_recordSet=m_stat->executeQuery("SELECT USER_CODE,USER_ROLE,USE_SCOPE,AUTH_TYPE,AUTH_DATA,AUTH_DATA_TYPE from AUTH_INFO WHERE AUTH_DATA_TYPE=\'0\'");
        } while(0);
        return res;
    }

    void COracle::traversalResult()
    {
        while(m_recordSet->next())
        {
            cout<<m_recordSet->getString(0)<<endl;
        }
    }

    int COracle::close()
    {
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
        if(m_con!=NULL)
        {
            m_env->terminateConnection(m_con);
            m_con=NULL;
        }
        return 0;
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