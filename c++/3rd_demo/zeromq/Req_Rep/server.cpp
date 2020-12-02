#include <iostream>
#include <string>
#include <string.h>

#include <zmq.h>

using namespace std;

int main(int argc,char * argv[])
{
    if(argc!=2)
    {
        cout<<"useage:"<<argv[0]<<" port"<<endl;
        return -1;
    }
    string url="tcp://*:";
    url.append(argv[1]);

    void *context=zmq_ctx_new();
    void *rep_socket=zmq_socket(context,ZMQ_REP);
    int res=zmq_bind(rep_socket,url.c_str());
    if(res!=0)
    {
        cout<<"zmq_bind error:"<<strerror(errno)<<endl;
        return -1;
    }

    zmq_msg_t request;
    zmq_msg_t reply;
    for(int i=0;i<10;++i)
    {
        zmq_msg_init(&request);
        int recvsize=zmq_msg_recv(&request,rep_socket,0);
        if(recvsize<=0)
        {
            cout<<"zmq_msg_recv error:"<<strerror(errno)<<endl;
            //sequence must as:recv-->send-->recv-->send .....
        }else
        {
            char *pmsg=new char[recvsize+1];
            memcpy(pmsg,zmq_msg_data(&request),recvsize);
            cout<<"recv "<<i<<" msg:"<<pmsg<<endl;
            delete []pmsg;
            pmsg=NULL;

            zmq_msg_init_size(&reply,5);
            memcpy(zmq_msg_data(&reply),"world",strlen("world"));
            int sendsize=zmq_msg_send(&reply,rep_socket,0);
            if(sendsize!=5)
            {
                cout<<"zmq_msg_send error:"<<strerror(errno)<<endl;
            }else
            {
                cout<<"send size="<<sendsize<<endl;
            }
        }
    }

    zmq_msg_close(&request);
    zmq_msg_close(&reply);
    zmq_close(rep_socket);
    zmq_ctx_destroy(context);
    return 0;
}
