#include <iostream>
#include <cstring>
#include <cstdio>
#include <ctime>

#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <signal.h>
#include <pthread.h>
#include <sys/mman.h>

#include "common.h"

const char *smname="./sm.name";
const char *datafile="./data.swap";
const int BufLen=1024;

using namespace std;
int main(int argc,char *argv[])
{
    char *pdata=NULL;
    int fd=open(datafile,O_CREAT|O_RDWR,0666);
    if(fd>0)
    {//map file
        if((lseek(fd,BufLen-1,SEEK_SET)<0)||(write(fd,"",1)<0))
        {
            close(fd);
            perror("lseek or write error");
            return -1;
        }else
        {
            pdata=(char *)mmap(NULL,BufLen,PROT_WRITE,MAP_SHARED,fd,0);
            close(fd);
            if(pdata==MAP_FAILED)
            {
                perror("mmap error");
                return -2;
            }
        }
    }else
    {
        perror("open error");
        return -3;
    }

    pthread_mutex_t *mutex=mutex_open(smname,O_RDWR,0777);
    srand(time(NULL));

    time_t t=0;
    for(int i=0;i<10;++i)
    {
        pthread_mutex_lock(mutex);
        bzero(pdata,BufLen);
        int res=time(&t);
        if(res==time_t(-1))
        {
            perror("time_t error");
        }
        cout<<"writing..."<<endl;
        sprintf(pdata,"%d:%d:%s",i,rand(),ctime(&t));
        cout<<"writed:"<<pdata<<endl;
        pthread_mutex_unlock(mutex);
        sleep(rand()%2+1);
    }

    cout<<"done."<<endl;
    int res=munmap((void*)pdata,BufLen);
    if(res!=0)
    {
        perror("munmap error");
    }
    unlink(datafile);
    res=mutex_close(mutex);
    if(res!=0)
    {
        perror("mutex_close error");
    }
    mutex_unlink(smname);
    return 0;
}
