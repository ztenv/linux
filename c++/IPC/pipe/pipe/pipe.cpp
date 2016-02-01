#include <iostream>

#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <cstring>

#include <strings.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <wait.h>
#include <signal.h>
#include <linux/limits.h>

using namespace std;

char buf[PIPE_BUF];

int fd[2];

void sighandler(int signum);
void child();
void parent();

int main(int argc,char *argv[])
{
    struct sigaction sig;
    sigemptyset(&sig.sa_mask);
    sig.sa_flags=0;
    sig.sa_handler=sighandler;
    int res=sigaction(SIGINT,&sig,NULL);
    res|=sigaction(SIGCHLD,&sig,NULL);
    if(res!=0)
    {
        perror("sigaction error");
        return -1;
    }
    res=pipe(fd);
    if(res!=0)
    {
        perror("pipe error");
        return -2;
    }

    pid_t pid=fork();
    if(pid==0)
    {
        cout<<"child "<<getpid()<<endl;
        child();
    }else if(pid>0)
    {
        cout<<"parnet "<<getpid()<<endl;
        parent();

        sleep(1);
    }else
    {
        perror("fork error");
    }
    return 0;
}

void sighandler(int signum)
{
    switch(signum)
    {
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
    case SIGINT:
        {
            close(fd[0]);
            close(fd[1]);
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
    close(fd[0]);

    time_t t=time(NULL);
    unsigned int seed=t;
    char *p=NULL;

    ssize_t buflen=0;
    int res=0;

    while(true)
    {
        bzero(buf,PIPE_BUF);
        rand_r(&seed);

        p=buf;
        char *ti=ctime_r(&t,p);
        if(ti==NULL)
        {
            perror("ctime_r error");
        }else
        {
            buflen=strlen(buf)-1;
            p+=buflen;
            sprintf(p,"%s%u","      ",seed);
            buflen=strlen(buf)-1;
            res=write(fd[1],buf,buflen);
            if(res<buflen)
            {
                perror("write error");
                break;
            }
        }
        sleep(1);
    }
}

void child()
{
    close(fd[1]);

    ssize_t readlen=0;
    while(true)
    {
        bzero(buf,PIPE_BUF);
        readlen=read(fd[0],buf,PIPE_BUF);
        if(readlen<=0)
        {
            perror("read error");
            break;
        }else
        {
            cout<<buf<<endl;
        }
    }
}

