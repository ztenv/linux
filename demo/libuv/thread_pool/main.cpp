#include <uv.h>
#include <cstdlib>
#include <functional>
#include <thread>
#include <iostream>
#include <vector>

using namespace std;

int64_t counter = 0;

void wait_for_a_while(uv_idle_t* handle) {
    std::this_thread::sleep_for(std::chrono::milliseconds(100));
}

void start(uv_work_t *req)
{
    int *pdata=(int*)req->data;

    for(int i=0;i<3000000;++i)
    {
        cout<<std::this_thread::get_id()<<":index="<<*pdata<<"******"<<i<<endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    }
    cout<<std::this_thread::get_id()<<": exit"<<endl;
}

void after(uv_work_t *req,int status)
{
    cout<<std::this_thread::get_id()<<" index="<<*((int*)req->data)<<"status="<<status<<endl;
}

void start_thread_pool(int num,uv_loop_t *loop)
{
    vector<int> dataVec;
    dataVec.reserve(num);
    vector<uv_work_t> reqVec;
    reqVec.reserve(num);

    for(int i=0;i<num;++i)
    {
        dataVec.push_back(i);
        uv_work_t req;
        req.data=&dataVec[i];
        reqVec.push_back(req);
        cout<<"start "<<*((int*)reqVec[i].data)<<endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
        uv_queue_work(loop,&reqVec[i],start,after);//此处的start、after只能使用函数指针，不支持类成员函数
    }
}

int main() {
    uv_idle_t idler;
    uv_loop_t *loop=uv_default_loop();

    uv_idle_init(loop, &idler);
    uv_idle_start(&idler, wait_for_a_while);

    const char *psize=getenv("UV_THREADPOOL_SIZE");
    cout<<"MAX_LIBUV_THREAD_POOL="<<((psize!=NULL)?psize:"4")<<endl;

    start_thread_pool(10,loop);//启动任务，后台有4个线程执行，所以部分任务需要排队等待

    cout<<"Idling..."<<endl;
    uv_run(loop, UV_RUN_DEFAULT);
    cout<<"exit main thread"<<endl;

    uv_loop_close(loop);
    return 0;
}
