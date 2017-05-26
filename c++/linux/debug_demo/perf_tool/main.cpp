#include <iostream>

void longa();
void longb();
void longc();

using namespace std;

int main(int argc,char *argv[])
{
    cout<<"call longc..."<<endl;
    longc();
    cout<<"longc exit"<<endl;

    cout<<"call longb..."<<endl;
    longb();
    cout<<"longb exit"<<endl;

    cout<<"call longa..."<<endl;
    longa();
    cout<<"longa exit"<<endl;

    return 0;
}

void longa()
{
    for(long i=0;i<1000000000;++i)
    {
        int j=i;
    }
}

void longb()
{
    for(long i=0;i<100000;++i)
    {
        int j=i;
    }
}
void longc()
{
    for(long i=0;i<100;++i)
    {
        int j=i;
    }
}

