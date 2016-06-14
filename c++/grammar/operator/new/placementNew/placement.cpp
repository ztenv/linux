#include <iostream>

#include <cstring>

using namespace std;

class Base
{
public:
    Base():m_pdata(NULL)
    {
        cout<<"ctoring..."<<endl;
        m_pdata=new char[DATA_LEN];
        bzero(m_pdata,DATA_LEN);
        cout<<"ctored"<<endl;
    }
    ~Base()
    {
        cout<<"dtoring..."<<endl;
        delete []m_pdata;
        m_pdata=NULL;
        cout<<"dtored"<<endl;
    }
private:
    char *m_pdata;
    static const size_t DATA_LEN=100;
};

int main(int argc,char *argv[])
{
    char buf[sizeof(Base)];
    bzero(buf,sizeof(Base));

    Base *pb=new (buf)Base();//定位new操作符，在buf缓冲区创建类Base的实例
    pb->~Base();             //显示调用析构函数，否则会造成内存泄漏
                             //不可能delete pb;因为pb的内存在栈(buf)上
    pb=NULL;

    return 0;
}
