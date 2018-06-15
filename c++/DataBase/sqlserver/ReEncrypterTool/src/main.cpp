// ReEncrypterTool.cpp : Defines the entry point for the console application.
//
/**
 * @file main.cpp
 * @brief 入口文件
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#include "stdafx.h"
#include <iostream>
#include <string>

#include <boost/shared_ptr.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/program_options.hpp>

#include "IDataAccess.h"
#ifdef _WIN32
#include "SqlServer.h"
#else
#include "Oracle.h"
#endif

using namespace std;
using namespace kingdom;
namespace po=boost::program_options;
namespace bpt=boost::posix_time;
#define  __version__ "1.1.0.0"

int main(int argc,char *argv[])
{
    size_t threadNumber=4;
    std::string user,pwd,ip,dbName;

    po::options_description od("kingdom GM cipher tool command options");
    od.add_options() ("help,h","list help info")
#ifdef _WIN32
        ("username,u",po::value<std::string>(&user)->default_value("sa"),"kbssacct database user name")
        ("password,p",po::value<std::string>(&pwd)->default_value("sa"),"kbssacct database user password")
        ("ip,i",po::value<std::string>(&ip)->default_value("127.0.0.1"),"mssql server ip")
        ("dbName,d",po::value<std::string>(&dbName)->default_value("kbssacct"),"database name")
#else
        ("username,u",po::value<std::string>(&user)->default_value("ACCT"),"kbssacct database user name")
        ("password,p",po::value<std::string>(&pwd)->default_value("acct"),"kbssacct database user password")
        ("ip,i",po::value<std::string>(&ip)->default_value("127.0.0.1:1521"),"oracle ip and port")
        ("serviceName,s",po::value<std::string>(&dbName)->default_value("orcl"),"oracle service name")
#endif
        ("threadNumber,n",po::value<size_t>(&threadNumber)->default_value(4),"io thread number,must greater than zero and less than 50.")
        ("version,v","list version")
        ;

    try
    {
        po::variables_map vm;
        po::store(po::parse_command_line(argc,argv,od),vm);
        po::notify(vm);

        if(vm.count("help")||argc==1)
        {
            cout<<od<<endl;
            return 0;
        }

        if(vm.count("version"))
        {
            cout<<__version__<<endl;
            return 0;
        }
    }
    catch(std::exception &e)
    {
        cout<<e.what()<<endl;
        return -1;
    }
    ContextPtr contexPtr=ContextPtr(new Context());
    contexPtr->setUserName(user);
    contexPtr->setPassword(pwd);
    contexPtr->setIP(ip);
    contexPtr->setDBName(dbName);
    contexPtr->setThreadNumber(threadNumber);

#ifdef _WIN32
    IDataAccessPtr pdaPtr(new CSqlServer());
#else
    IDataAccessPtr pdaPtr(new COracle());
#endif

    bpt::ptime start=bpt::microsec_clock::local_time();
    int res=pdaPtr->doWork(contexPtr);
    if(res!=0)
    {
        cout<<"do Work error:"<<res<<endl;
    }
    bpt::ptime stop=bpt::microsec_clock::local_time();

    contexPtr->getResultPtr()->UsedTime=stop-start;
    cout<<*contexPtr->getResultPtr()<<endl;

    contexPtr->getResultPtr()->dump();
    cout<<"press Enter key to continue..."<<endl;

    getchar();

    return 0;
}

