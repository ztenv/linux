#include <iostream>

#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <cstring>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>
#include <strings.h>
#include <signal.h>
#include <wait.h>
#include <fcntl.h>

using namespace std;

const char *PSemName="/pname.lsh";
const char *VSemName="/vname.lsh";

unsigned int seed=1;
sem_t *psem=NULL;
sem_t *vsem=NULL;


void sighandler(int signum);
void semclean();
void parent();
void child();

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
    }

    psem=sem_open(PSemName,O_CREAT|O_RDWR,0666,0);
    if(psem==NULL)
    {
        perror("open PSemName error");
        return -1;
    }

    vsem=sem_open(VSemName,O_CREAT|O_RDWR,0666,1);
    if(vsem==NULL)
    {
        perror("open VSemName error");
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
        semclean();
        return -3;
    }

    semclean();
    return 0;
}

//child process print a random number first
//parent process print a random number second

void parent()
{
    int res=0;
    while(1)
    {
        res=sem_wait(psem);
        if(res<0)
        {
            perror("sem_wait psem error");
            break;
        }

        rand_r(&seed);
        cout<<"parent:<"<<getpid()<<","<<seed<<">"<<endl;
        cout<<endl;

        res=sem_post(vsem);
        if(res<0)
        {
            perror("sem_post vsem error");
            break;
        }
    }
}

void child()
{
    seed+=100;
    int res=0;
    while(1)
    {
        res=sem_wait(vsem);
        if(res<0)
        {
            perror("sem_wait vsem error");
            break;
        }
        rand_r(&seed);
        cout<<"child:<"<<getpid()<<","<<seed<<">"<<endl;
        res=sem_post(psem);
        if(res<0)
        {
            perror("sem_post psem error");
            break;
        }
        sleep(seed%2+1);
    }
}

void semclean()
{
    sem_post(psem);
    sem_post(vsem);
    sem_close(psem);
    sem_close(vsem);
    sem_unlink(PSemName);
    sem_unlink(VSemName);
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
                cout<<"child process "<<pid<<" exited!"<<endl;
            }
            break;
        }
    case SIGINT:
        {
            semclean();
            break;
        }
    default:
        {
            break;
        }
    }
}
