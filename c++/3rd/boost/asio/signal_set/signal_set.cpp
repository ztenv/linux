#include <iostream>

#include <boost/asio.hpp>
#include <boost/asio/signal_set.hpp>
#include <boost/bind.hpp>
#include <boost/ref.hpp>

using namespace std;

int main(int argc,char *argv[])
{
    boost::asio::io_service ios;
    boost::asio::signal_set signals(ios);
    signals.add(SIGINT);
    signals.add(SIGTERM);

    signals.async_wait(boost::bind(&boost::asio::io_service::stop,boost::ref(ios)));
    cout<<"signal_set is running"<<endl;
    ios.run();
    cout<<"signal_set exit normally"<<endl;
    return 0;
}
