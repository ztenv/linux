#include <iostream>
#include <string>

#include "proto.pb.h"

using namespace std;
using namespace ogg;
int main(int argc, char const* argv[])
{
    CheckTable ct;
    ct.set_dbtype(CheckTable_DataBaseType::CheckTable_DataBaseType_Oracle);
    ct.set_ip("127.0.0.1");
    ct.set_port("1521");
    ct.set_user("ogg");
    ct.set_password("OGG");
    ct.set_sid("orcl");
    ct.add_tablelist("ogg.test01");
    ct.add_tablelist("ogg.test02");
    ct.add_tablelist("ogg.test03");

    std::string buf{ct.SerializeAsString()};

    ct.ParseFromString(buf);

    cout<<ct.dbtype()<<endl;
    cout<<ct.ip()<<endl;
    cout<<ct.port()<<endl;
    cout<<ct.user()<<endl;
    cout<<ct.password()<<endl;
    cout<<ct.sid();

    auto iter=ct.tablelist().begin();
    while(iter!=ct.tablelist().end())
    {
        cout<<*iter++<<endl;
    }

    cout<<"************************SerializeAsString***********"<<endl;
    cout<<ct.SerializeAsString()<<endl;
    return 0;
}
