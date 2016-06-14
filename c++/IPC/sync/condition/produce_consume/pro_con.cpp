#include <iostream>

#include <cstdio>
#include <cstdlib>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <pthread.h>
#include <signal.h>

#include "lockguard.h"
#include "data.h"

using namespace std;

const size_t ThreadNum=3;
pthread_t threads[ThreadNum];

pthread_mutex_t iomutex;
CData<int> m_buf(10);

void sighandler(int signum);

void init();
void finit();
void wait();
void *produce(void *pdata);
void *consume(void *pdata);
void thread_cleanup(void *pdata);
int main(int argc,char *argv[])
{
    init();
    wait();
    finit();
    return 0;
}

void init()
{
    struct sigaction sig;
    sigemptyset(&sig.sa_mask);
    sig.sa_flags=0;
    sig.sa_handler=sighandler;
    int res=sigaction(SIGINT,&sig,NULL);
    if(res!=0)
    {
        perror("sigaction errro");
    }
    bzero(threads,sizeof(pthread_t)*ThreadNum);
    res=pthread_mutex_init(&iomutex,NULL);
    if(res!=0)
    {
        perror("pthread_mutex_init error");
    }

    pthread_attr_t attr;
    bzero(&attr,sizeof(pthread_attr_t));
    pthread_attr_setschedpolicy(&attr,SCHED_RR);
    pthread_attr_setstacksize(&attr,100);

    res=pthread_create(&threads[0],&attr,produce,&m_buf);
    res|=pthread_create(&threads[1],&attr,consume,&m_buf);
    res|=pthread_create(&threads[2],&attr,consume,&m_buf);
    pthread_attr_destroy(&attr);

    if(res!=0)
    {
        perror("pthread_create error");
        return;
    }
}

void finit()
{
    int res=pthread_mutex_destroy(&iomutex);
    if(res!=0)
    {
        perror("pthread_mutex_destroy error");
    }
}

void sighandler(int signum)
{
    switch(signum)
    {
        case SIGINT:
            {
                for(size_t i=0;i<ThreadNum;++i)
                {
                    pthread_cancel(threads[i]);
                }
                break;
            }
        default:
            {
                cout<<"trap signal="<<signum<<endl;
            }
    }
}

void wait()
{
    for(size_t i=0;i<ThreadNum;++i)
    {
        pthread_join(threads[i],NULL);
    }
}

void *produce(void *pdata)
{ 
    pthread_cleanup_push(thread_cleanup,NULL);
    unsigned int seed=static_cast<unsigned int>(time(NULL));
    CData<int> *buf=static_cast<CData<int>*>(pdata);
    if(buf==NULL)
    {
        MutexGuard(&iomutex);
        cout<<pthread_self()<<" invalid args"<<endl;
        return NULL;
    }

    do
    {
        rand_r(&seed);
        int *data=new int(seed%1000);
        {
            MutexGuard(&iomutex);
            cout<<pthread_self()<<" produce:"<<*data<<endl;
        }
        buf->add(data);//print first and then add to buf,otherwise,the date mybe be deleted by consume thread
        sleep(1);
    }while(1);

    pthread_cleanup_pop(1);
    return NULL;
}
void *consume(void *pdata)
{
    pthread_cleanup_push(thread_cleanup,NULL);
    CData<int> *buf=static_cast<CData<int>*>(pdata);
    if(buf==NULL)
    {
        MutexGuard(&iomutex);
        cout<<pthread_self()<<" invalid args"<<endl;
        return NULL;
    }
    int *item=NULL;
    unsigned int seed=static_cast<unsigned int>(time(NULL))+10;
    do
    {
        buf->read(&item);
        if(item!=NULL)
        {
            MutexGuard(&iomutex);
            cout<<pthread_self()<<" consume:"<<*item<<endl;
            delete item;
            item=NULL;
        }else
        {
            MutexGuard(&iomutex);
            cout<<"CData::read error"<<endl;
        }
        rand_r(&seed);
        sleep(seed%3+1);

    }while(1);

    pthread_cleanup_pop(1);
    return NULL;
}
void thread_cleanup(void *pdata)
{
    cout<<pthread_self()<<" exit"<<endl;
}
