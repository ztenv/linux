#include <uv.h>

#include <thread>
#include <iostream>

using namespace std;

int64_t counter = 0;

void wait_for_a_while(uv_idle_t* handle) {
    cout<<counter++<<endl;

    if (counter<=0)
        uv_idle_stop(handle);
    std::this_thread::sleep_for(std::chrono::milliseconds(300));
}

int main() {
    uv_idle_t idler;

    uv_idle_init(uv_default_loop(), &idler);
    uv_idle_start(&idler, wait_for_a_while);

    cout<<"Idling..."<<endl;
    uv_run(uv_default_loop(), UV_RUN_DEFAULT);
    cout<<"exit main thread"<<endl;

    uv_loop_close(uv_default_loop());
    return 0;
}
