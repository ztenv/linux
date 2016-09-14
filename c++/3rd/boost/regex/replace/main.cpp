#include <iostream>
#include <string>

#include <boost/regex.hpp>

using namespace std;
int main(int argc, char *argv[])
{
    {
        //反向引用，将正则的部分值拆开，用前缀替换,如下串：
        //"resource_id":"222_19222_aaa_bbb_ccc_ddd"
        //使用替换规则(如果resource_id后面的第一个下划线前的值为0 ，则替换为1 ，否则前缀加上1_
        //，上面的字符串替换后的结果为："resource_id":"1_222_19222_aaa_bbb_ccc_ddd"
        //则如下的正则替换可达到目的：
        std::string s="\"resource_id\":\"222_19222_aaa_bbb_ccc_ddd\"";
        boost::regex el("(resource_id\":\")([1-9]{1,9}+_)");//将正则拆分为两部分，

        std::string sr=boost::regex_replace(s,el,"resource_id\":\"1_$2");//反向引用正则的第二部分
        cout<<s<<endl;
        cout<<sr<<endl;
    }
    cout<<endl;
    {
        std::string s="\"resource_id\":\"0_19222_aaa_bbb_ccc_ddd\"";
        boost::regex el("\"resource_id\":\"0_");

        std::string sr=boost::regex_replace(s,el,"\"resource_id\":\"1_");
        cout<<" :"<<s<<endl;
        cout<<sr<<endl;
    }

    return 0;
}
