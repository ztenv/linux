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
#include <fcntl.h>

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
    struct flock locker;
    locker.l_len=0;
    locker.l_start=0;
    locker.l_whence=SEEK_SET;
    locker.l_type=F_WRLCK;

    unsigned int seed=time(NULL);

    for(int i=0;i<20;++i)
    {
        bzero(buf,BUFLEN);
        locker.l_type=F_WRLCK;
        rand_r(&seed);
        int res=fcntl(fd,F_SETLKW,&locker);

        sprintf(buf,"%d,%i,%u\n",getpid(),i,seed);
        int len=strlen(buf);
        res=write(fd,buf,len);
        if(res!=len)
        {
            perror("write error");
        }else
        {
            cout<<"parent write:"<<buf<<endl;
        }
        locker.l_type=F_UNLCK;
        res=fcntl(fd,F_SETLKW,&locker);
        sleep(seed%2+2);
    }
    close(fd);
}

void child()
{
    struct flock locker;
    locker.l_len=0;
    locker.l_start=0;
    locker.l_whence=SEEK_SET;
    locker.l_type=F_WRLCK;

    unsigned int seed=time(NULL)+10;

    for(int i=0;i<20;++i)
    {
        bzero(buf,BUFLEN);
        rand_r(&seed);
        locker.l_type=F_WRLCK;
        int res=fcntl(fd,F_SETLKW,&locker);

        sprintf(buf,"%d,%i,%u\n",getpid(),i,seed);
        ssize_t len=strlen(buf);
        res=write(fd,buf,len);
        if(res!=len)
        {
            perror("write error");
        }else
        {
            cout<<"child write:"<<buf<<endl;
        }
        locker.l_type=F_UNLCK;
        res=fcntl(fd,F_SETLKW,&locker);
        sleep(seed%2+1);
    }
    close(fd);
}
