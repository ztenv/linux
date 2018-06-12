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
#include "SqlServer.h"

using namespace std;
using namespace kingdom;
namespace po=boost::program_options;
namespace bpt=boost::posix_time;
#define  __version__ "1.0.0.0"

int main(int argc,char *argv[])
{
    po::options_description od("command options");
    std::string user,pwd,ip,dbName;
    od.add_options() ("help,h","list help info")
#ifdef _WIN32
        ("username,u",po::value<std::string>(&user)->default_value("sa"),"kbssacct database user name")
        ("password,p",po::value<std::string>(&pwd)->default_value("sa"),"kbssacct database user password")
        ("ip,i",po::value<std::string>(&ip)->default_value("127.0.0.1"),"mssql server ip")
#else
        ("username,u",po::value<std::string>(&user)->default_value("ACCT"),"kbssacct database user name")
        ("password,p",po::value<std::string>(&pwd)->default_value("acct"),"kbssacct database user password")
        ("ip,i",po::value<std::string>(&ip)->default_value("127.0.0.1:1521"),"oracle ip and port")
#endif
        ("dbName,d",po::value<std::string>(&dbName)->default_value("kbssacct"),"database name")
        ("version,v","list version")
        ;

    try
    {
        po::variables_map vm;
        po::store(boost::program_options::parse_command_line(argc,argv,od),vm);
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

    int res=0;
#ifdef _WIN32
    IDataAccessPtr pdaPtr(new CSqlServer());
#else
    IDataAccessPtr pdaPtr(new COracle());
#endif
    bpt::ptime start=bpt::microsec_clock::local_time();

    res=pdaPtr->doWork(contexPtr);
    if(res!=0)
    {
        cout<<"do Work error:"<<res<<endl;
    }

    bpt::ptime stop=bpt::microsec_clock::local_time();

    contexPtr->getResultPtr()->UsedTime=stop-start;
    //cout<<"All works have been done.it used "<<contexPtr->getResultPtr()->UsedTime<<" seconds."<<endl;
    cout<<*contexPtr->getResultPtr()<<endl;

    contexPtr->getResultPtr()->dump();
    getchar();
    return 0;
}

