#include <iostream>
#include <string>

using namespace std;


class Base
{
public:
    Base(const char *id):m_id(id)
    {

    }

    Base(const Base &b)
    {
        m_id=b.m_id;
        print("Base(const Base&b)");
    }

    virtual ~Base()
    {
    }

    Base &operator=(const Base &o)
    {
        if(this!=&o)
        {
            m_id=o.m_id;
        }
        print("Base &operator=(const Base &o)");
        return *this;
    }

    string getID()
    {
        return m_id;
    }

private:
    string m_id;

    void print(const char *funname)
    {
        cout<<"base "<<funname<<endl;
        cout<<"     m_id="<<m_id<<endl;
    }
};

class Sub:public Base
{
public:
    Sub(const char *id,int num):Base(id),m_number(num)
    {
    }
    Sub(const Sub &s):Base(s)
    {
        m_number=s.m_number;
        print("Sub(const Sub &s)");
    }
    Sub &operator=(const Sub &o)
    {
        Base::operator=(o);
        if(this!=&o)
        {
            m_number=o.m_number;
        }
        print("Sub &operator =(const Sub &o)");
        return *this;
    }
    virtual ~Sub()
    {
    }
    int getNumber()
    {
        return m_number;
    }
private:
    int m_number;
    void print(const char *funname)
    {
        cout<<"Sub "<<funname<<endl;
        cout<<"     m_id="<<getID()<<",m_number="<<m_number<<endl;
    }
};

int main(int argc,char *argv[])
{
    Base b("0001"),c("0002");
    Base a(c);
    c=b;

    cout<<"***********************************************"<<endl;

    Sub s1("0003",3),s2("0004",4);
    Sub s3(s1);
    cout<<"s3.id="<<s3.getID()<<",s3.num="<<s3.getNumber()<<endl;
    s3=s2;
    cout<<"s3.id="<<s3.getID()<<",s3.num="<<s3.getNumber()<<endl;

    return 0;
}
