#include "StringSplit.h"
#include <iostream>

void f(const char * value);
int main()
{
    std::string src="aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a"
    ;

    unsigned long long num=0;

    do
    {
        StringHelper::split(src,f,",");
    }while(++num<100000);
    return 0;
}

void f(const char *value)
{
}
