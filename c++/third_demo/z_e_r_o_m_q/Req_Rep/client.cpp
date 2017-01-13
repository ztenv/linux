#include <iostream>
#include <string.h>

#include <zmq.h>

using namespace std;

int main(int argc,char *argv[])
{
    void *context=zmq_ctx_new();
    void *req_socket=zmq_socket(context,ZMQ_REQ);
    zmq_connect(req_socket,"tcp://localhost:23456");

    for(int i=0;i<10;++i)
    {
        zmq_msg_t msg;
        zmq_msg_init_size(&msg,strlen("hello"));
        memcpy(zmq_msg_data(&msg),"hello",strlen("hello"));
        int size=zmq_msg_send(&msg,req_socket,0);
        cout<<"send size="<<size<<endl;
        zmq_msg_close(&msg);

        zmq_msg_t reply;
        zmq_msg_init(&reply);
        size=zmq_msg_recv(&reply,req_socket,0);
        char *pmsg=new char[size+1];
        memcpy(pmsg,zmq_msg_data(&reply),size);
        cout<<"recv "<<i<<" msg:"<<pmsg<<endl;
        delete []pmsg;
        zmq_msg_close(&reply);

    }
    zmq_close(req_socket);
    zmq_ctx_destroy(context);
    return 0;
}
