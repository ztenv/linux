#include <iostream>
#include <list>
#include <algorithm>

using namespace std;

class IsOddNum
{
public:
    bool operator()(int &num)
    {
        return num%2==0;
    }
};

class Print
{
public:
    void operator()(int &num)
    {
        cout<<num<<",";
    }
};

int main(int argc,char *argv[])
{
    list<int> li;

    for(int i=-100;i<100;++i)
    {
        li.push_back(i);
    }
    
    std::remove_if(li.begin(),li.end(),IsOddNum());
    std::for_each(li.begin(),li.end(),Print());

    return 0;
}
