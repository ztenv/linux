#include <stdio.h>
#include <iostream>
#include <sstream>
#include <iomanip>

using namespace std;

int main()
{
    std::ostringstream oss;
    oss.fill('0');
    oss.width(24);
    oss<<65534;
    cout<<oss.str()<<endl;

    oss.str("");
    oss.fill('0');
    oss.width(30);
    oss.setf(ios::left,ios::adjustfield);
    oss<<"abcde";
    cout<<oss.str()<<endl;

    oss.str("");
    oss.fill(' ');
    oss.width(15);
    oss.setf(ios::left,ios::adjustfield);
    oss<<"*****";
    cout<<oss.str()<<"|"<<endl;

    oss.str("");
    oss.fill('0');
    oss.width(5);
    oss.setf(ios::right,ios::adjustfield);
    oss<<123456;
    std::string s=oss.str();
    s.resize(5); //实现截断
    cout<<s<<endl;

    oss.str("");
    oss.fill(' ');
    oss.width(30);
    oss.setf(ios::left,ios::adjustfield);
    oss<<"aaaaa";
    s=oss.str();
    s.resize(30);
    cout<<s<<endl;

    oss.str("");
    oss.fill('0');
    oss.width(7);
    oss.setf(ios::right,ios::adjustfield);
    const char *val="0.66";
    std::stringstream ss;
    ss<<val;
    double fval;
    ss>>fval;
    fval*=10000;
    oss<<(long long)fval;
    cout<<oss.str()<<endl;
    return 0;
}
