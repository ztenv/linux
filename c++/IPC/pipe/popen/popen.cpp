#include <iostream>

#include <cstdio>
#include <cstring>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

using namespace std;

const size_t BufLen=4*1024;

int main(int argc,char *argv[])
{
    FILE *pstream=popen("top","r");

    char buf[BufLen];
    bzero(buf,BufLen);
    fread(buf,1,BufLen,pstream);
    cout<<buf<<endl;

    pclose(pstream);

    return 0;
}
