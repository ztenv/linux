#include <iostream>
#include <string>
#include <sstream>
#include <vector>

#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>

#include "../user.h"

using namespace std;

int main(int argc,char * argv[])
{
    CUser user("shlian","男",26);

    stringstream ss;
    boost::archive::text_oarchive ar(ss);
    ar <<user;
    cout<<user<<endl;
    cout<<ss.str()<<endl;

    cout<<endl<<"load data from stream"<<endl;
    CUser user2;
    boost::archive::text_iarchive iar(ss);
    iar>>user2;
    cout<<user2<<endl;

    return 0;
}
