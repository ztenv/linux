#include "common.h"

#include <cstdint>
#include <cstring>
#include <sstream>
#include <iomanip>
#include <iostream>


namespace common{
    using namespace std;

    std::vector<std::string> split(const std::string &str,const std::string &pattern) noexcept
    {
        vector<string> resultVec;
        do{
            char * strc = new (std::nothrow)char[strlen(str.c_str())+1];
            if(strc==nullptr)
            {
                cout<<"split "<<str<<" error:"<<strerror(errno)<<endl;;
                break;
            }

            strcpy(strc, str.c_str());
            char* tmpStr = strtok(strc, pattern.c_str());
            while (tmpStr != NULL)
            {
                resultVec.push_back(string(tmpStr));
                tmpStr = strtok(NULL, pattern.c_str());
            }
            delete[] strc;
        }while(0);
        return resultVec;
    }

    std::string format_time(std::chrono::system_clock::time_point &&tp) noexcept
    {
        std::stringstream ss;
        auto t=std::chrono::system_clock::to_time_t(tp);
        auto lt=std::put_time(std::localtime(&t),"%Y-%m-%d %H:%M:%S");
        ss<<lt;
        return ss.str();
    }
}
