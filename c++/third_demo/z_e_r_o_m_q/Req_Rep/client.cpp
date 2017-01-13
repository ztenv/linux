#include <iostream>
#include <string>

#include <string.h>

#include <zmq.h>

using namespace std;

int main(int argc,char *argv[])
{
    if(argc!=2)
    {
        cout<<"usage:"<<argv[0]<<" ip:port"<<endl;
        return -1;
    }

    void *context=zmq_ctx_new();
    void *req_socket=zmq_socket(context,ZMQ_REQ);
    string url="tcp://";
    url.append(argv[1]);

    int res=zmq_connect(req_socket,url.c_str());
    if(res!=0)
    {
        cout<<"zmq_connect "<<url<<" error:"<<strerror(errno)<<endl;
        return -1;
    }

    zmq_msg_t msg;
    zmq_msg_t reply;
    string sendcontent="hello";
    for(int i=0;i<10;++i)
    {
        zmq_msg_init_size(&msg,sendcontent.length());
        memcpy(zmq_msg_data(&msg),sendcontent.c_str(),sendcontent.length());
        int sendsize=zmq_msg_send(&msg,req_socket,0);
        if(sendsize!=sendcontent.length())
        {
            cout<<"zmq_msg_send error:"<<strerror(errno)<<endl;
        }else
        {
            cout<<"send size="<<sendsize<<endl;
        }

        zmq_msg_init(&reply);
        int recvsize=zmq_msg_recv(&reply,req_socket,0);
        if(recvsize<=0)
        {
            cout<<"zmq_msg_recv error:"<<strerror(errno)<<endl;
        }else
        {
            char *pmsg=new char[recvsize+1];
            memcpy(pmsg,zmq_msg_data(&reply),recvsize);
            cout<<"recv "<<i<<" msg:"<<pmsg<<endl;
            delete []pmsg;
        }
    }

    zmq_msg_close(&msg);
    zmq_msg_close(&reply);
    zmq_close(req_socket);
    zmq_ctx_destroy(context);
    return 0;
}
