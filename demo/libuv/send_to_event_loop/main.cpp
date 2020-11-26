/**
 * @file main.cpp
 * @brief async handler demo
 * @author shlian
 * @version 1.0
 * @date 2020-11-24
 */

#include <chrono>
#include <cstring>

#include <initializer_list>
#include <iostream>
#include <sstream>
#include <string>
#include <memory>
#include <thread>
#include <functional>
#include <vector>

#include <uv.h>

#include <gflags/gflags.h>
#include <vector>

#include "../include/common.h"

DEFINE_int32(thread_number,2,"the thread number");
DEFINE_int32(timer_interval,1000,"the timer interval");

using uv_loopPtr=std::shared_ptr<uv_loop_t>;
using uv_asyncPtr=std::shared_ptr<uv_async_t>;
using uv_timerPtr=std::shared_ptr<uv_timer_t>;
using uv_signalPtr=std::shared_ptr<uv_signal_t>;
using threadSet=std::vector<std::shared_ptr<std::thread>>;

int init(uv_loopPtr &loopPtr) noexcept;

int regist_async(const uv_loopPtr loopPtr,uv_asyncPtr &asyncPtr,uv_async_cb cb);
int regist_timer(const uv_loopPtr loopPtr,uv_timerPtr &timerPtr,uv_timer_cb cb);
int regist_signal(const uv_loopPtr loopPtr,uv_signalPtr &signalPtr,uv_signal_cb cb,std::initializer_list<int> signals);

threadSet init_thread(uv_asyncPtr asyncPtr);

int main(int argc, char *argv[])
{
    gflags::SetUsageMessage("Usage");
    gflags::ParseCommandLineFlags(&argc,&argv,true);

    uv_loopPtr loopPtr;
    uv_asyncPtr asyncPtr;
    uv_timerPtr timerPtr;
    uv_signalPtr signalPtr;
    int res=0;

    do{
        res=init(loopPtr);
        if(res!=0)
        {
            break;
        }

        res=regist_async(loopPtr,asyncPtr,[](uv_async_t *handle){
                auto pdata=static_cast<char*>(handle->data);
                LOG_INFO(std::this_thread::get_id()<<" recv one request["<<pdata<<"]");
                delete [] pdata;
                handle->data=nullptr;
                });
        if(res!=0)
        {
            break;
        }

        res=regist_timer(loopPtr,timerPtr,[](uv_timer_t *handle){
                LOG_INFO("timer callback");
                });
        if(res!=0)
        {
            break;
        }

        auto ts=init_thread(asyncPtr);

        //why can not the libuv catch the signal and call back the cb function
        res=regist_signal(loopPtr,signalPtr,[](uv_signal_t *handle,int signum){
                LOG_INFO("trap signal:"<<signum);
                },{SIGINT,SIGTERM});

        res=uv_run(loopPtr.get(),UV_RUN_DEFAULT);
        if(res!=0)
        {
            LOG_ERROR("uv_run error,exit!");
            break;
        }

    }while(0);

    return 0;
}

int init(uv_loopPtr &loopPtr) noexcept
{
    int res=0;

    do{
        loopPtr=uv_loopPtr(static_cast<uv_loop_t*>(malloc(sizeof(uv_loop_t))),[](uv_loop_t *loop){
                if(loop!=nullptr)
                {
                    uv_loop_close(loop);
                    free(loop);
                    loop=nullptr;
                    LOG_INFO("stop and free uv_loop_t");
                }
                });

        if(loopPtr.get()==nullptr)
        {
            res=-1;
            LOG_ERROR("create uv_loop_t error,res="<<res);
            break;
        }

        res=uv_loop_init(loopPtr.get());
        if(res!=0)
        {
            LOG_ERROR("init uv_loop_t error,res="<<res);
            break;
        }

    }while(0);

    return res;
}

int regist_async(const uv_loopPtr loopPtr,uv_asyncPtr &asyncPtr,uv_async_cb cb)
{
    int res=0;
    asyncPtr=uv_asyncPtr(static_cast<uv_async_t*>(malloc(sizeof(uv_async_t))),[](uv_async_t *async){
            if(async!=nullptr)
            {
            free(async);
            async=nullptr;
            LOG_INFO("free uv_async_t handler");
            }
            });
    do{
        if(asyncPtr.get()==nullptr)
        {
            res=-2;
            LOG_ERROR("init uv_async_t error,res="<<res);
            break;
        }
        res=uv_async_init(loopPtr.get(),asyncPtr.get(),cb);
    }while(0);

    return res;
}

int regist_timer(const uv_loopPtr loopPtr,uv_timerPtr &timerPtr,uv_timer_cb cb)
{
    timerPtr=uv_timerPtr(static_cast<uv_timer_t*>(malloc(sizeof(uv_timer_t))),[](uv_timer_t *timer){
            if(timer!=nullptr)
            {
                uv_timer_stop(timer);
                free(timer);
                timer=nullptr;
                LOG_INFO("timer was stopped");
            }
            });

    int res=0;
    do{
        if(timerPtr.get()==nullptr)
        {
            res=-1;
            LOG_ERROR("create timer error,res="<<res);
            break;
        }

        res=uv_timer_init(loopPtr.get(),timerPtr.get());
        if(res!=0)
        {
            res=-2;
            LOG_ERROR("init timer error,res="<<res);
            break;
        }

        res=uv_timer_start(timerPtr.get(),cb,0,FLAGS_timer_interval);
        if(res!=0)
        {
            res=-3;
            LOG_ERROR("start timer error,res="<<res);
            break;
        }

    }while(0);


    return res;
}
int regist_signal(const uv_loopPtr loopPtr,uv_signalPtr &signalPtr,uv_signal_cb cb,std::initializer_list<int> signals)
{
    int res=0;

    signalPtr=uv_signalPtr(static_cast<uv_signal_t*>(malloc(sizeof(uv_signal_t))),[](uv_signal_t *handle){
            if(handle!=nullptr)
            {
                uv_signal_stop(handle);
                free(handle);
                handle=nullptr;
                LOG_INFO("stop and free uv_signal_t");
            }
            });
    do{
        if(signalPtr.get()==nullptr)
        {
            res=-1;
            LOG_ERROR("create uv_signal_t error,res="<<res);
            break;
        }
        for(auto & signal:signals)
        {
            res=uv_signal_start(signalPtr.get(),cb,signal);
            if(res!=0)
            {
                LOG_ERROR("regist "<<signal<<" error,res="<<res);
            }
        }
    }while(0);

    return res;
}

threadSet init_thread(uv_asyncPtr asyncPtr)
{
    threadSet ts;
    for(int i=0;i<FLAGS_thread_number;++i)
    {
        ts.push_back(std::shared_ptr<std::thread>(new std::thread([&](){
                        while(true)
                        {
                            std::ostringstream ss;
                            ss<<std::this_thread::get_id();
                            ss<<":";
                            ss<<common::format_time();

                            char * pdata=new char[ss.str().size()];
                            strcpy(pdata,ss.str().data());
                            asyncPtr->data=pdata;

                            uv_async_send(asyncPtr.get());
                            std::this_thread::sleep_for(std::chrono::seconds(2));
                        }
                        })));
        LOG_INFO("create "<<i+1<<" threads");
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
    return ts;
}
