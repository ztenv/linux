/**
 * @file main.cpp
 * @brief  libuv simple demo
 * @author shlian
 * @version 1.0
 * @date 2020-11-23
 */

#include <iostream>
#include <memory>

#include <uv.h>

#include "../include/common.h"

using uv_loopPtr=std::shared_ptr<uv_loop_t>;
using uv_idlePtr=std::shared_ptr<uv_idle_t>;
using uv_timerPtr=std::shared_ptr<uv_timer_t>;

int regist_idle_handle(uv_idlePtr idlePtr,uv_loopPtr loopPtr);

int regist_timer(uv_timerPtr timerPtr,uv_loopPtr loopPtr);


int main(int argc, char *argv[])
{
    uv_loopPtr  loopPtr(static_cast<uv_loop_t*>(malloc(sizeof(uv_loop_t))),[](uv_loop_t* loop){
            if(loop !=nullptr)
            {
                if(uv_loop_alive(loop))
                {
                    uv_loop_close(loop);
                }
                free(loop);
                loop=nullptr;
            }
            });

    do{
        int res=uv_loop_init(loopPtr.get());
        if(res!=0)
        {
            LOG_ERROR("uv_loop_init error,res="<<res);
            break;
        }

        uv_idlePtr idlePtr(static_cast<uv_idle_t*>(malloc(sizeof(uv_idle_t))),[](uv_idle_t *idler){
                uv_idle_stop(idler);
                free(idler);
                idler=nullptr;
                });
        //res=regist_idle_handle(idlePtr,loopPtr); can not regist the idle handle ,otherwise,the loop will const 100% cpu
        //if(res!=0)
        //{
        //    LOG_ERROR("regist_idle_handle error,res="<<res);
        //    break;
        //}

        uv_timerPtr timerPtr(static_cast<uv_timer_t*>(malloc(sizeof(uv_timer_t))),[](uv_timer_t *timer){
                if(timer!=nullptr)
                {
                    uv_timer_stop(timer);
                    timer=nullptr;
                }
                });
        res=regist_timer(timerPtr,loopPtr);
        if(res!=0)
        {
            LOG_ERROR("regist_timer error,res="<<res);
            break;
        }

        res=uv_run(loopPtr.get(),UV_RUN_DEFAULT);
        LOG_INFO("uv_run exits,res="<<res);
    }while(0);

    return 0;
}

int regist_timer(uv_timerPtr timerPtr,uv_loopPtr loopPtr)
{
    int res=uv_timer_init(loopPtr.get(),timerPtr.get());
    if(res==0)
    {
        res=uv_timer_start(timerPtr.get(),[](uv_timer_t *timer){
                LOG_INFO("timer is callback");
                },1000,10*1000);
    }
    LOG_INFO("regist_timer res="<<res);
    return res;
}

int regist_idle_handle(uv_idlePtr idlePtr,uv_loopPtr loopPtr)
{
    uv_idle_init(loopPtr.get(),idlePtr.get());
    int res=uv_idle_start(idlePtr.get(),[](uv_idle_t *idle){
            //LOG_INFO("idle");
            });
    LOG_INFO("regist_idle_handle res="<<res);
    return res;
}
