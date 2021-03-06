#include <iostream>
#include <vector>
#include <atomic>

#include <pthread.h>
#include <unistd.h>

using namespace std;

unsigned long g_LoopCount(100000);
pthread_mutex_t io;
pthread_mutex_t pl;
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

    pthread_mutex_init(&io,0);
    pthread_mutex_init(&pl,0);

    unsigned int threadNumber(100);
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

    pthread_mutex_destroy(&pl);
    pthread_mutex_destroy(&io);
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
        if(ia>=g_LoopCount)
        {
            break;
        }
        ai+=1;
        ++ia;
        usleep(1000*10);
    }while(true);
    pthread_mutex_lock(&io);
    cout<<ai<<" "<<ia<<",";
    pthread_mutex_unlock(&io);
    return NULL;
}

unsigned long bi(0);
unsigned long ib(0);
void * process2(void *arg)
{
    do{
        pthread_mutex_lock(&pl);
        if(ib>=g_LoopCount)
        {
            pthread_mutex_unlock(&pl);
            break;
        }
        bi=bi+1;
        ++ib;
        pthread_mutex_unlock(&pl);
        usleep(1000*10);
    }while(true);
    pthread_mutex_lock(&io);
    cout<<bi<<" "<<ib<<",";
    pthread_mutex_unlock(&io);
    return NULL;
}
