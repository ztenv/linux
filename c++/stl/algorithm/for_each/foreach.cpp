#include <iostream>
#include <list>
#include <algorithm>

using namespace std;


/**
 * @brief 判断是否为奇数
 */
class IsOddNum
{
public:
    bool operator()(int &num)
    {
        return num%2==0;
    }
};


/**
 * @brief 输出元素的functor
 */
class Print
{
public:

    /**
     * @brief    operator () 的重载
     *
     * @param[in] num 整型输入参数
     */
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
