#include <iostream>
#include <string>

#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <cstring>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <wait.h>
#include <signal.h>
#include <limits.h>


using namespace std;

const char *FIFONAME="./fifo.pipe";
int fd=-1;

struct Data
{
    Data():length(0)
    {
        bzero(buf,PIPE_BUF);
    }
    ~Data()
    {
    }

    int length;
    char buf[PIPE_BUF];
};

Data fifoData;

void sighandler(int signum)
{
    switch(signum)
    {
    case SIGCHLD:
        {
            pid_t pid=0;
            int status=0;
            while((pid=waitpid(-1,&status,WNOHANG))>=0)
            {
                cout<<"child process "<<pid<<" exited!"<<endl;
            }
            break;
        }
    case SIGINT:
        {
            close(fd);
            unlink(FIFONAME);
            break;
        }
    default:
        {
            break;
        }
    }
}

void ParentProcess();
void ChildPProcess();

int main(int arc ,char * argv[])
{
    struct sigaction sig;
    sig.sa_flags=0;
    sigemptyset(&sig.sa_mask);
    sig.sa_handler=sighandler;

    int res=sigaction(SIGCHLD,&sig,NULL);
    res|=sigaction(SIGINT,&sig,NULL);
    if(res!=0)
    {
        perror("sigaction error");
        return -1;
    }

    unlink(FIFONAME);
    res=mkfifo(FIFONAME,0666);
    if(res!=0)
    {
        perror("mkfifo error");
        return -2;
    }
    srand(time(NULL));

    pid_t pid=fork();
    if(pid==0)
    {
        cout<<"child process "<<getpid()<<endl;
        ChildPProcess();
    }else if(pid>0)
    {
        cout<<"parent process "<<getpid()<<endl;
        ParentProcess();
        sleep(1);
    }else
    {
        perror("fork error");
        return -10;
    }

    unlink(FIFONAME);
    return 0;
}

void ParentProcess()
{
    fd=open(FIFONAME,O_WRONLY,0666);
    if(fd<0)
    {
        perror("open error");
        return;
    }

    time_t t=0;

    while(true)
    {
        bzero(&fifoData,sizeof(struct Data));

        time(&t);
        char *p=ctime_r(&t,fifoData.buf);
        if(p==NULL)
        {
            perror("ctime_r error");
        }else
        {
            fifoData.length=strlen(fifoData.buf)-1;
            ssize_t wlen=write(fd,&fifoData,fifoData.length);
            if(wlen!=fifoData.length)
            {
                perror("write error");
                break;
            }
        }
        sleep(rand()%3);
    }

    close(fd);
}

void ChildPProcess()
{
    fd=open(FIFONAME,O_RDONLY,0666);
    if(fd<0)
    {
        perror("open error");
        return;
    }

    while(true)
    {
        bzero(&fifoData,sizeof(struct Data));
        ssize_t rlen=read(fd,&fifoData,sizeof(struct Data));
        if(rlen<=0)
        {
            perror("read error");
            break;
        }else
        {
            cout<<","<<fifoData.buf<<endl;
        }
    }

    close(fd);
}
