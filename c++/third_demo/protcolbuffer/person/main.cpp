#include <iostream>
#include <fstream>
#include <string>

#include "person.pb.h"

using namespace std;

int main(int argc,char *argv[])
{
    if(argc!=2)
    {
        cout<<"usage:"<<argv[0]<<" Read[Write]"<<endl;
        return -1;
    }

    std::string param=argv[1];
    if(param=="Write")
    {
        Base::Person p,p1;
        p.set_id("130633198105010036");
        p.set_name("shlian");
        p.set_sex(Base::M);
        p.set_age(30);
        p.set_phone("15989518377");
        p.add_address("河北保定");
        p.add_address("广东深圳");

        //p1.CopyFrom(p);
        //p1.set_id("aaaaaaaaaaa");
        //p1.set_name("liansh");

        fstream fs("./data/persons.dat",ios::out|ios::binary);
        p.SerializeToOstream(&fs);
        //p1.SerializeToOstream(&fs);
        fs.close();
    }else{
        fstream fs("./data/persons.dat",ios::in|ios::binary);

        {
            Base::Person p;
            p.ParseFromIstream(&fs);
            cout<<"id="<<p.id()<<"|name="<<p.name()<<"|sex="<<p.sex()<<"|age="<<p.age()<<"|phone="<<p.phone()<<"|address="<<p.address(0)<<"&"<<p.address(1)<<endl;
        }

        //{ 不能读多条，只能读出最后一条
        //    Base::Person p;
        //    p.ParseFromIstream(&fs);
        //    cout<<"id="<<p.id()<<"|name="<<p.name()<<"|sex="<<p.sex()<<"|age="<<p.age()<<"|phone="<<p.phone()<<"|address="<<p.address(0)<<"&"<<p.address(1)<<endl;
        //}

        fs.close();
    }

    return 0;
}
