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
#include <sys/mman.h>
#include <strings.h>
#include <signal.h>
#include <wait.h>
#include <fcntl.h>

using namespace std;

const char *PSemName="/pname.lsh";
const char *VSemName="/vname.lsh";
const char *ShmName="/shm.lsh";
const size_t MapLen=1024;

unsigned int seed=1;
sem_t *psem=NULL;
sem_t *vsem=NULL;

void *shmAddr=NULL;


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

    psem=sem_open(PSemName,O_CREAT|O_RDWR,0666,1);
    if(psem==NULL)
    {
        perror("open PSemName error");
        return -1;
    }

    vsem=sem_open(VSemName,O_CREAT|O_RDWR,0666,0);
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
    int fd=shm_open(ShmName,O_CREAT|O_RDWR|O_TRUNC,0666);
    if(fd<0)
    {
        perror("shm_open errro");
        return ;
    }
    res=lseek(fd,MapLen,SEEK_SET);
    if(res<0)
    {
        perror("lseek error");
        return;
    }
    res=write(fd,"",1);
    if(res!=1)
    {
        perror("write error");
        return;
    }
    shmAddr=mmap(NULL,MapLen,PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);
    close(fd);
    if(shmAddr==NULL)
    {
        perror("mmap error");
        return;
    }

    char *p=static_cast<char *>(shmAddr);
    while(1)
    {
        rand_r(&seed);

        res=sem_wait(psem);
        if(res<0)
        {
            perror("sem_wait psem error");
            break;
        }
        bzero(p,MapLen);
        sprintf(p,"<%d,%u>",getpid(),seed);
        cout<<"parent write:"<<p<<endl;

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
    int fd=shm_open(ShmName,O_CREAT|O_RDONLY|O_TRUNC,0666);
    if(fd<0)
    {
        perror("shm_open errro");
        return ;
    }
    shmAddr=mmap(NULL,MapLen,PROT_READ,MAP_SHARED,fd,0);
    close(fd);
    if(shmAddr==NULL)
    {
        perror("mmap error");
        return;
    }

    char *p=static_cast<char *>(shmAddr);
    while(1)
    {
        res=sem_wait(vsem);
        if(res<0)
        {
            perror("sem_wait vsem error");
            break;
        }
        cout<<"child read:"<<p<<endl<<endl;
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

    munmap(shmAddr,MapLen);
    shm_unlink(ShmName);
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
