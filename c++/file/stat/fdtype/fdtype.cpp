/**
 * @file fdtype.cpp
 * @brief 判断文件描述符是管道还是文件的示例
 * @author shlian 
 * @version 1.0
 * @date 2016-02-15
 */

#include <iostream>

#include <cstdio>

#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <strings.h>

using namespace std;

int main(int argc,char *argv[])
{
    int fd=-1;
    int pfd[2]={-1,-1};

    //open file 
    fd=open("./lsh.file",O_CREAT|O_TRUNC|O_RDWR,0666);
    if(fd<0)
    {
        perror("open error");
    }

    //open pipe
    int res=pipe(pfd);
    if(res<0)
    {
        perror("pipe error");
    }

    struct stat fst;
    bzero(&fst,sizeof(struct stat));

    //file stat struct
    res=fstat(fd,&fst);
    if(res<0)
    {
        perror("fstat error");
    }else
    {
        cout<<"fd="<<fd<<(S_ISFIFO(fst.st_mode)?" is pipe":" is file")<<endl;
    }

    //file stat struct
    res=fstat(pfd[0],&fst);
    if(res<0)
    {
        perror("fstat error");
    }else
    {
        cout<<"pfd[0]="<<pfd[0]<<(S_ISFIFO(fst.st_mode)?" is pipe":" is file")<<endl;
    }

    //file stat struct
    res=fstat(pfd[1],&fst);
    if(res<0)
    {
        perror("fstat error");
    }else
    {
        cout<<"pfd[1]="<<pfd[1]<<(S_ISFIFO(fst.st_mode)?" is pipe":" is file")<<endl;
    }

    //close file description
    if(fd>0)
    {
        close(fd);
        fd=-1;
    }
    if((pfd[0]>0)&&(pfd[1]>0))
    {
        close(pfd[0]);
        close(pfd[1]);
        pfd[0]=-1;
        pfd[1]=-1;
    }

    return 0;
}
