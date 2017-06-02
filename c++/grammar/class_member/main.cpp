#include <iostream>

using namespace std;

class Base
{
public:
    Base(int i=0):m_value(i),m_value2(0x8000)
    {
    }
    virtual ~Base()
    {
    }

    static int Base::* getValue()
    {
        return &Base::m_value;
    }
    static long Base::* getValue2()
    {
        return &Base::m_value2;
    }

private:
    int m_value;
    long m_value2;
};

int main(int argc,char *argv[])
{
    int Base::* pv=Base::getValue();//获取数据成员m_value的“地址”，这个地址是一个偏移量，不是一个真实的地址。
    long Base::* pv2=Base::getValue2();

    //cout<<"offset="<<pv<<endl;
    //cout<<"offset="<<pv2<<endl;

    Base b(1000);

    cout<<"m_value="<<b.*pv<<endl;
    cout<<"m_value2="<<b.*pv2<<endl;

    b.*pv=10;
    b.*pv2=-1;
    cout<<"m_value="<<b.*pv<<endl;
    cout<<"m_value2="<<b.*pv2<<endl;
    return 0;
}
