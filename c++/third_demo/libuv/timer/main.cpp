#include <uv.h>

#include <memory>
#include <thread>
#include <iostream>

using namespace std;

typedef std::shared_ptr<uv_loop_t> uv_loop_tPtr;

int main()
{

    uv_loop_tPtr loopPtr=uv_loop_tPtr(uv_default_loop(),[](uv_loop_t *loop)->void{
                                      uv_loop_close(loop);});

        uv_timer_t timer_req1;
        uv_timer_init(loopPtr.get(),&timer_req1);
        uv_timer_start(&timer_req1,[](uv_timer_t *handler)->void{
                       static int count=0;
                       cout<<"timer1$$$$$$$$"<<++count<<endl;
                       },1000,1000*10);

        uv_timer_t timer_req2;
        uv_timer_init(loopPtr.get(),&timer_req2);
        uv_timer_start(&timer_req2,[](uv_timer_t *handler)->void{
                       static int count=0;
                       cout<<"timer2:_______"<<++count<<endl;
                       },1000,1000);

        uv_timer_t timer_req3;
        uv_timer_init(loopPtr.get(),&timer_req3);
        uv_timer_start(&timer_req3,[](uv_timer_t *handle)->void{
                       static int count=0;
                       cout<<"timer3:*******"<<++count<<endl;
                       },1000,0);

        uv_timer_t timer_req4;
        uv_timer_init(loopPtr.get(),&timer_req4);
        uv_timer_start(&timer_req4,[](uv_timer_t *handle)->void{
                       static int count=0;
                       cout<<"timer4:*******"<<++count<<endl;
                       },0,1000);

    uv_run(uv_default_loop(), UV_RUN_DEFAULT);

    return 0;
}
