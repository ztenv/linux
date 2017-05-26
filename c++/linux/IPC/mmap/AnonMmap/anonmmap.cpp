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
#include <sys/mman.h>
#include <semaphore.h>

using namespace std;

const ssize_t MAPLEN=4*1024+2*sizeof(sem_t);
const int RUNTIME=20;
void * mapAddr=NULL;
void * dataAddr=NULL;

sem_t *psem=NULL;
sem_t *vsem=NULL;

void sighandler(int signum);
void parent();
void child();
void clean();

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
    mapAddr=mmap(NULL,MAPLEN,PROT_READ|PROT_WRITE,MAP_SHARED|MAP_ANON,-1,0);
    if(mapAddr==NULL)
    {
        perror("mmap error");
        return -2;
    }
    //set psem and vsem pointer
    psem=static_cast<sem_t*>(mapAddr);
    vsem=static_cast<sem_t*>(mapAddr+sizeof(sem_t));

    //init psem and vsem
    res=sem_init(psem,1,1);
    if(res!=0)
    {
        perror("sem_init psem error");
        return -3;
    }
    res=sem_init(vsem,1,0);
    if(res!=0)
    {
        perror("sem_init vsem error");
        return -4;
    }

    dataAddr=mapAddr+2*sizeof(sem_t);

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
        clean();
        return -3;
    }

    clean();

    return 0;
}

void clean()
{
    sem_post(psem);
    sem_post(vsem);

    sem_destroy(psem);
    sem_destroy(vsem);

    int res=munmap(mapAddr,MAPLEN);
    if(res!=0)
    {
        perror("munmap error");
    }
}

void sighandler(int signum)
{
    switch(signum)
    {
    case SIGINT:
        {
            clean();
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
    char *pdata=static_cast<char *>(dataAddr);
    int res=0;
    for(int i=0;i<RUNTIME;++i)
    {
        rand_r(&seed);

        res=sem_wait(psem);
        if(res!=0)
        {
            perror("sem_wait psem error");
            break;
        }

        bzero(pdata,MAPLEN-2*sizeof(sem_t));
        int res=sprintf(pdata,"%d,%i,%u\n",getpid(),i,seed);
        if(res==0)
        {
            perror("sprintf error");
            break;
        }else
        {
            cout<<"parent write:"<<pdata;
        }
        res=sem_post(vsem);
        if(res!=0)
        {
            perror("sem_post vsem error");
            break;
        }

        sleep(seed%2+2);
    }

    sem_post(vsem);
}

void child()
{
    char *pdata=static_cast<char *>(dataAddr);
    int res=0;
    for(int i=0;i<RUNTIME;++i)
    {
        res=sem_wait(vsem);
        if(res!=0)
        {
            perror("sem_wait vsem error");
            break;
        }
        cout<<"child read:"<<pdata<<endl;
        res=sem_post(psem);
        if(res!=0)
        {
            perror("sem_post psem error");
            break;
        }
    }
    sem_post(psem);
}
