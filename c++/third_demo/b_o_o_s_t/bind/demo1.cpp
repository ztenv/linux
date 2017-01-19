#include <iostream>
#include <string>

#include <boost/bind.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/function.hpp>

class Base
{
public:
    Base(){}
    ~Base(){}

    Base(const Base &other)=delete;
    Base(Base &&other)=delete;

    Base &operator=(const Base &other)=delete;
    Base &operator=(Base &&other)=delete;
};

using namespace std;
using namespace boost;

typedef boost::function<void(std::string)> FuncType;

void func1(FuncType func)
{
    func(std::string("aa"));
}

void func(std::string s)
{
    cout<<s<<endl;
}

int main(int argc,char *argv[])
{
    auto f=boost::bind(func,_1);
    func1(f);
    return 0;
}
