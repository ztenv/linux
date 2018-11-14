#include "OracleAdapter.h"
#include <iostream>
#include <sstream>
#include <functional>

using namespace std;

namespace database{

    int COracleAdapter::Initialize()
    {
        int res=0;
        try{
            m_env=oracle::occi::Environment::createEnvironment(oracle::occi::Environment::THREADED_MUTEXED);
            if(m_env==NULL)
            {
                cout<<"createEnvironment error"<<endl;
                res=-1;
            }
        }catch(oracle::occi::SQLException &e)
        {
            cout<<"Initialize error:"<<e.what()<<endl;
            res=-1;
        }
        return res;
    }

    int COracleAdapter::Connect(const std::string &ip,const std::string &SID,
                                const std::string &userName,const std::string &pwd)
    {
        int res=0;
        std::string conStr(ip);
        conStr.append("/").append(SID);
        try{
            if(m_con==NULL)
            {
                m_con=m_env->createConnection(userName,pwd,conStr);
                if(m_con==NULL)
                {
                    cout<<"createConnection error:"<<userName<<","<<pwd<<","<<conStr<<endl;
                    res=-1;
                }
                m_statement=m_con->createStatement();
                if(m_statement==NULL)
                {
                    cout<<"createStatement error:"<<endl;
                    res=2;
                }
            }
        }catch(oracle::occi::SQLException &e)
        {
            cout<<"Connect error:"<<e.what();
            cout<<"connect info:"<<conStr<<endl;
        }
        return res;
    }

    COracleAdapter::ResultSetPtr COracleAdapter::ExecuteQuery(const std::string &sql)
    {
        using namespace std::placeholders;
        oracle::occi::ResultSet *resultSet=NULL;
        try{
            resultSet=m_statement->executeQuery(sql);
        }catch(oracle::occi::SQLException &e)
        {
            cout<<"executeQuery error:"<<e.what();
            cout<<"sql:"<<sql<<endl;
        }

        //ResultSetPtr rsPtr=std::shared_ptr<oracle::occi::ResultSet>
            //(resultSet,std::bind(&COracleAdapter::CloseResult,this,_1));
            //存在安全隐患
        auto Deleter=[&](oracle::occi::ResultSet *resultSet)->void{
            if((resultSet!=NULL)&&(m_statement!=NULL))
            {
                m_statement->closeResultSet(resultSet);
            }
        };

        ResultSetPtr rsPtr=std::shared_ptr<oracle::occi::ResultSet>(resultSet,Deleter);

        return  rsPtr;
    }

    int COracleAdapter::Close()
    {
        int res=0;
        try{
            if(m_statement!=NULL)
            {
                m_con->terminateStatement(m_statement);
                m_statement=NULL;
            }
            if(m_con!=NULL)
            {
                m_env->terminateConnection(m_con);
                m_con=NULL;
            }

        }catch(oracle::occi::SQLException &e)
        {
            cout<<"close is error:"<<e.what()<<endl;
            res=-1;
        }
        return res;
    }

    void COracleAdapter::DeInitialize()
    {
        if(m_env!=NULL)
        {
            oracle::occi::Environment::terminateEnvironment(m_env);
        }
        m_env=NULL;
    }


}
