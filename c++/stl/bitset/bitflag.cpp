#include <iostream>
#include <math.h>
#include <bitset>
#include <iomanip>

using namespace std;

int main(int argc,char *argv[])
{
    int len=3;
    int num=(int)pow(2,len);
    for(int i=0;i<num;++i)
    {
        bitset<sizeof(i)*8> mm(i);
        cout<<"("<<i<<")="<<mm<<endl;
    }
    return 0;
}
