#include <cstring>
#include <iostream>

using namespace std;

class Base
{
public:
    Base():i(100)
    {
        memset(j,'a',10);
        j[9]=0;
    }
    virtual ~Base()
    {
    }
    virtual void f()
    {
        cout <<i<< "f:"<<j << endl;
        j[8]='b';
    }
    virtual void g()
    {
        cout <<i<< "g:"<<j << endl;
    }
private:
    int i;
    char j[10];

};


int main()
{
    typedef void(*Fun)(Base *);

    Base b;

    Fun pFun = NULL;

    pFun = (Fun)*(((long*)*(long*)(&b))+2);//invoke f()
    pFun(&b);

    pFun = (Fun)*(((long*)*(long*)(&b))+3);//invoke g();
    pFun(&b);

    return 0;
}

