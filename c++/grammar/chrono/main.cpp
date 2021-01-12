#include <cstdint>
#include <ctime>
#include <iostream>
#include <chrono>
#include <sstream>
#include <iomanip>

using namespace std;


void time_point_to_duration();
void duration_to_time_point();
void format_time_point();
void parse_from_string();

int main(int argc, char *argv[])
{
    time_point_to_duration();

    duration_to_time_point();

    format_time_point();

    parse_from_string();

    return 0;
}

void time_point_to_duration()
{
    auto tp=std::chrono::system_clock::now();

    auto seconds=std::chrono::duration_cast<std::chrono::seconds>(tp.time_since_epoch());
    cout<<seconds.count()<<" s"<<endl;//seconds from 1970

    auto ms=std::chrono::duration_cast<std::chrono::milliseconds>(tp.time_since_epoch());
    cout<<ms.count()<<" ms"<<endl;

    auto us=std::chrono::duration_cast<std::chrono::microseconds>(tp.time_since_epoch());
    cout<<us.count()<<" us"<<endl;

    auto ns=std::chrono::duration_cast<std::chrono::nanoseconds>(tp.time_since_epoch());
    cout<<ns.count()<<" ns"<<endl;

    cout<<tp.time_since_epoch().count()<<" default is ns"<<endl;
}

void duration_to_time_point()
{
    std::uint64_t ticker=1609756793160376465;
    auto ns=std::chrono::nanoseconds(ticker);

    auto tp1=std::chrono::time_point<std::chrono::system_clock,std::chrono::nanoseconds>(ns);
    auto tp2=tp1-std::chrono::hours(1);//time point before one hour
    cout<<"tp1="<<tp1.time_since_epoch().count()<<endl<<"tp2="<<tp2.time_since_epoch().count()<<endl;
}

void format_time_point()
{
    auto tp=std::chrono::system_clock::now();
    auto time=std::chrono::system_clock::to_time_t(tp);
    std::stringstream ss;
    ss<<std::put_time(std::localtime(&time),"%Y-%m-%d %H:%M:%S");

    cout<<ss.str()<<endl;
}

void parse_from_string()
{
    std::stringstream ss;
    ss<<"2021-01-06 18:47:35";

    std::tm tm{};
    ss>>std::get_time(&tm,"%Y-%m-%d %H:%M:%S");
    auto tp=std::chrono::system_clock::from_time_t(std::mktime(&tm));
    cout<<tp.time_since_epoch().count()<<endl;
}
