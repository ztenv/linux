#include <iostream>
#include <string.h>

#include <zmq.h>

using namespace std;

int main(int argc,char * argv[])
{
    void *context=zmq_ctx_new();
    void *rep_socket=zmq_socket(context,ZMQ_REP);
    zmq_bind(rep_socket,"tcp://*:23456");

    for(int i=0;i<10;++i)
    {
        zmq_msg_t request;
        zmq_msg_init(&request);
        int recvsize=zmq_msg_recv(&request,rep_socket,0);
        char *pmsg=new char[recvsize+1];
        memcpy(pmsg,zmq_msg_data(&request),recvsize);
        cout<<"recv "<<i<<" msg:"<<pmsg<<endl;
        delete []pmsg;
        pmsg=NULL;
        zmq_msg_close(&request);

        zmq_msg_t reply;
        zmq_msg_init_size(&reply,5);
        memcpy(zmq_msg_data(&reply),"world",strlen("world"));
        zmq_msg_send(&reply,rep_socket,0);
        zmq_msg_close(&reply);
    }

    zmq_close(rep_socket);
    zmq_ctx_destroy(context);
    return 0;
}
