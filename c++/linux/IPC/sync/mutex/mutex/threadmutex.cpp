#include <iostream>

#include <cstring>
#include <cstdio>
#include <cstdlib>

#include <pthread.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

using namespace std;

const int Thread_Number=5;
pthread_mutex_t iomutex;

void *threadentry(void *pdata);

int main(int argc,char *argv[])
{
    pthread_mutex_init(&iomutex,NULL);

    pthread_t tid[Thread_Number];
    bzero(tid,Thread_Number);

    pthread_attr_t attr;
    bzero(&attr,sizeof(pthread_attr_t));
    pthread_attr_setschedpolicy(&attr,SCHED_RR);
    for(int i=0;i<Thread_Number;++i)
    {
        int res=pthread_create(&tid[i],NULL,threadentry,NULL);
        if(res!=0)
        {
            perror("pthread_create error");
        }
    }

    getchar();

    for(int i=0;i<Thread_Number;++i)
    {
        pthread_join(tid[i],NULL);
    }
    pthread_mutex_destroy(&iomutex);
    return 0;
}

void threadclean(void *pdata)
{
    cout<<"tid="<<pthread_self()<<" exit"<<endl;
}

void *threadentry(void *pdataa)
{
    pthread_cleanup_push(threadclean,NULL);
    {
        pthread_mutex_lock(&iomutex);
        cout<<"id="<<pthread_self()<<endl;
        pthread_mutex_unlock(&iomutex);
    }

    pthread_cleanup_pop(1);
    return NULL;
}
