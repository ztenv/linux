#include <uv.h>

#include <thread>
#include <iostream>

#include "Path.h"

using namespace std;

int64_t counter = 0;

void wait_for_a_while(uv_idle_t* handle) {
    std::this_thread::sleep_for(std::chrono::milliseconds(300));
}

int main() {
    uv_idle_t idler;
    uv_loop_t *loop=uv_default_loop();

    uv_idle_init(loop, &idler);
    uv_idle_start(&idler, wait_for_a_while);

    {//创建、删除、判断目录是否存在
        int res=uvframe::oggAgent::Path::exists("./test_mk_dir/");
        if(res!=0)
        {
            cout<<"can not access ./test_mk_dir/ error:"<<uv_strerror(res)<<endl;;
        }
        res=uvframe::oggAgent::Path::rmdir("./test_mk_dir/");
        uvframe::oggAgent::Path::rmdir("1.txt");
        if (res!=0)
        {
            cout<<"uv_fs_rmdir error:"<<uv_strerror(res)<<endl;
        }

        res=uvframe::oggAgent::Path::mkdir("./test_mk_dir");
//        res=uv_fs_mkdir(loop,&req,"./test_mk_dir",0774,NULL);
        if(res!=0)
        {
            cout<<"uv_fs_mkdir error:"<<uv_strerror(res)<<":"<<res<<endl;
        }
    }



    cout<<"Idling..."<<endl;
    uv_run(loop, UV_RUN_DEFAULT);
    cout<<"exit main thread"<<endl;

    uv_loop_close(loop);
    return 0;
}
