#include <iostream>

#include <boost/ref.hpp>
#include <boost/asio.hpp>
#include <boost/asio/steady_timer.hpp>
#include <boost/thread.hpp>
#include <boost/chrono.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>


using namespace std;
using namespace boost;


void time_out(boost::shared_ptr<boost::asio::steady_timer> timerPtr,const boost::system::error_code &ec)
{
    if(!ec)
    {
        cout<<"time out:"<<boost::posix_time::to_simple_string(boost::get_system_time())<<endl;
        timerPtr->expires_from_now(boost::chrono::seconds(1));
        timerPtr->async_wait(boost::bind(time_out,timerPtr,boost::asio::placeholders::error));
    }else
    {
        cout<<"steady_timer canceled,ec:"<<ec.value()<<",message:"<<ec.message()<<endl;
    }
}

int main(int argc,char *argv[])
{
    boost::asio::io_service ios;
    boost::asio::io_service::work work(ios);

    boost::shared_ptr<boost::asio::steady_timer> timerPtr=boost::shared_ptr<boost::asio::steady_timer>(
        new boost::asio::steady_timer(boost::ref(ios)));
    timerPtr->expires_from_now(boost::chrono::seconds(1));
    timerPtr->async_wait(boost::bind(time_out,timerPtr,boost::asio::placeholders::error));

    boost::shared_ptr<boost::thread> tPtr=boost::shared_ptr<boost::thread>(new boost::thread(
            boost::bind(&boost::asio::io_service::run,boost::ref(ios))));

    getchar();
    timerPtr->cancel();
    return 0;
}
