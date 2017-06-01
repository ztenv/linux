#include <iostream>

using namespace std;

class Base
{
public:
    Base(int i=0):m_value(i)
    {
    }
    ~Base()
    {
    }

    static int Base::* getValue()
    {
        return &Base::m_value;
    }

private:
    int m_value;
};

int main(int argc,char *argv[])
{
    int Base::* pv=Base::getValue();
    Base b(1000);

    cout<<b.*pv<<endl;

    b.*pv=10;
    cout<<b.*pv<<endl;
    return 0;
}
