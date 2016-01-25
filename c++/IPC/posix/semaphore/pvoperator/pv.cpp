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

using namespace std;

const size_t BUFLEN=1024;
char buf[1024];
sem_t psem;
sem_t vsem;

pthread_t pthid=-1;
pthread_t vthid=-1;

void *Pfunc(void *);
void *Vfunc(void *);
void thread_cleanup(void *);

int main(int argc,char *argv[])
{
    int res=sem_init(&psem,0,0);
    res|=sem_init(&vsem,0,1);
    if(res!=0)
    {
        perror("sem_init error");
        return -1;
    }

    res=pthread_create(&pthid,NULL,Pfunc,NULL);
    res|=pthread_create(&vthid,NULL,Vfunc,NULL);
    if(res!=0)
    {
        perror("pthread_create error");
        return -2;
    }

    pthread_join(pthid,NULL);
    pthread_join(vthid,NULL);

    sem_destroy(&psem);
    sem_destroy(&vsem);
}

void *Pfunc(void *pdata)
{
    pthread_cleanup_push(thread_cleanup,NULL);
    while(1)
    {
        sem_wait(&psem);//P operate
        cout<<"read<"<<pthread_self()<<","<<buf<<">"<<endl;
        cout<<endl;
        sem_post(&vsem);//V operate
    }

    pthread_cleanup_pop(1);
    return NULL;
}

void *Vfunc(void *pdata)
{
    pthread_cleanup_push(thread_cleanup,NULL);
    time_t t=time(NULL);
    srand(t);
    while(1)
    {
        bzero(buf,BUFLEN);
        t=time(NULL);

        sem_wait(&vsem);//P operate
        ctime_r(&t,buf);
        buf[strlen(buf)-1]=0;
        cout<<"write<"<<pthread_self()<<","<<buf<<">"<<endl;
        sem_post(&psem);//V operate
        sleep(rand()%2+1);
    }
    pthread_cleanup_pop(1);
    return NULL;
}

void thread_cleanup(void *)
{
    sem_post(&psem);
    sem_post(&vsem);
}
