/**
 * @file this_point.cpp
 * @brief this指针加1的思考
 * @author shlian
 * @version 1.0
 * @date 2017-06-21
 */

#include <cstring>
#include <cstdio>

class A
{
public:
    A():a(0),b(0)
    {
        memset(c,97,1024);
    }
    virtual ~A(){}

    char * getdata()const
    {
        return (char*)(void*)(this+1);//返回的是什么？当前对象的末端地址
    }
private:
    int a;
    int b;
    char c[10];
};

int main(int argc,char *argv[])
{
    A a;
    A a1;
    char *p=a.getdata();//这里就是a1的首地址

    return 0;
}
