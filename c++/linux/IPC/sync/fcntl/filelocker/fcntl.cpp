#include <iostream>

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>

#include <sys/types.h>
#include <sys/stat.h>
#include <wait.h>
#include <unistd.h>
#include <signal.h>

#include "filelocker.h"

using namespace std;

const char * FILENAME="./fcntl.tmp";
const ssize_t BUFLEN=1024;

char buf[BUFLEN];
int fd=-1;

void sighandler(int signum);
void parent();
void child();

int main(int argc,char * argv[])
{
    struct sigaction sig;
    sigemptyset(&sig.sa_mask);
    sig.sa_flags=0;
    sig.sa_handler=sighandler;

    int res=sigaction(SIGINT,&sig,NULL);
    res|=sigaction(SIGCHLD,&sig,NULL);
    if(res<0)
    {
        perror("sigaction error");
        return -1;
    }

    fd=open(FILENAME,O_CREAT|O_RDWR|O_TRUNC,0666);
    if(fd<0)
    {
        perror("open error");
        return -2;
    }

    pid_t pid=fork();
    if(pid==0)
    {
        cout<<"child process "<<getpid()<<endl;
        child();
    }else if(pid>0)
    {
        cout<<"parent process "<<getpid()<<endl;
        parent();
        sleep(1);
    }else
    {
        perror("fork error");
        return -3;
    }

    return 0;
}

void sighandler(int signum)
{
    switch(signum)
    {
    case SIGINT:
        {
            break;
        }
    case SIGCHLD:
        {
            pid_t pid=-1;
            int stat=-1;

            while((pid=waitpid(-1,&stat,WNOHANG))>0)
            {
                cout<<"child "<<pid<<" exited!"<<endl;
            }
            break;
        }
    default:
        {
            cout<<"trap sig "<<signum<<endl;
            break;
        }
    }
}

void parent()
{
    unsigned int seed=time(NULL);
    filelocker flocker;
    for(int i=0;i<20;++i)
    {
        bzero(buf,BUFLEN);
        rand_r(&seed);

        flocker.getWriteLockWait(fd);

        sprintf(buf,"%d,%i,%u\n",getpid(),i,seed);
        int len=strlen(buf);
        int res=write(fd,buf,len);
        if(res!=len)
        {
            perror("write error");
        }else
        {
            cout<<"parent write:"<<buf<<endl;
        }

        flocker.unlock(fd);

        sleep(seed%2+2);
    }
    close(fd);
}

void child()
{
    unsigned int seed=time(NULL)+10;
    filelocker flocker;

    for(int i=0;i<20;++i)
    {
        bzero(buf,BUFLEN);
        rand_r(&seed);

        flocker.getWriteLockWait(fd);

        sprintf(buf,"%d,%i,%u\n",getpid(),i,seed);
        ssize_t len=strlen(buf);
        int res=write(fd,buf,len);
        if(res!=len)
        {
            perror("write error");
        }else
        {
            cout<<"child write:"<<buf<<endl;
        }

        flocker.unlock(fd);

        sleep(seed%2+1);
    }
    close(fd);
}
