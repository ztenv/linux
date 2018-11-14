#include "test.pb.h"
#include <iostream>
using namespace std;
using namespace pt;

int main(int argc,char *argv[])
{
    pt::user u;
    u.set_name("shlian");
    u.set_sex(1);
    u.set_age(30);

    std::string buf{u.SerializeAsString()};

    cout<<u.name()<<endl;
    cout<<u.sex()<<endl;
    cout<<u.age()<<endl;
    return 0;
}
