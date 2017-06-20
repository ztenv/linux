#include <iostream>
#include <atomic>
#include <pthread.h>

using namespace std;

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
    return 0;
}
