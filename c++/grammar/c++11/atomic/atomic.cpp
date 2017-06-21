#include <iostream>
#include <vector>
#include <atomic>

#include <pthread.h>
#include <unistd.h>

using namespace std;

unsigned long g_LoopCount(300000);
void * process1(void *arg);
void * process2(void *arg);

int main(int argc,char *argv[])
{
    std::atomic<int> ai;
    ai=10;
    cout<<"ai="<<ai<<endl;

    int bi;
    pthread_mutex_t pl;
    pthread_mutex_lock(&pl);
    bi=100;
    pthread_mutex_unlock(&pl);
    cout<<"bi="<<bi<<endl;

    vector<pthread_t> threadSet;

    unsigned int threadNumber(50);
    for(unsigned int i=0;i<threadNumber;++i)
    {
        pthread_t t;
        int res=pthread_create(&t,NULL,process1,NULL);
        if(res==0)
        {
            threadSet.push_back(t);
        }else{
            cout<<"create "<<i<<" thread error"<<endl;
        }
    }

    for(unsigned int i=0;i<threadNumber;++i)
    {
        pthread_join(threadSet[i],NULL);
    }

    return 0;
}

/**
 * @brief 当单线程调用process1()和process2()时，后者效率更高；当多线程调用process1()和
 * process2()时，前者效率略高一点点，但代码整洁度很好
 */
std::atomic<unsigned long> ai(0);
std::atomic<unsigned long> ia(0);
void * process1(void *arg)
{
    do{
        ai=ai+1;
        usleep(1000*10);
    }while(++ia<g_LoopCount);
    return NULL;
}

unsigned long bi(0);
unsigned long ib(0);
pthread_mutex_t pl;
void * process2(void *arg)
{
    do{
        pthread_mutex_lock(&pl);
        bi=bi+1;
        ++ib;
        pthread_mutex_unlock(&pl);
        usleep(1000*10);
    }while(ib<g_LoopCount);
    return NULL;
}
