/**
 * @file common.h
 * @brief common functions
 * @author shlian
 * @version 1.0
 * @date 2020-10-21
 */
#pragma once

#include <cstdint>
#include <iostream>
#include <string>
#include <vector>
#include <chrono>


namespace common{

    /**
     * @brief split string by pattern string
     *
     * @param str     source string to split
     * @param pattern pattern string
     *
     * @return substring vector
     */
    std::vector<std::string> split(const std::string &str,const std::string &pattern) noexcept;

    /**
     * @brief format time point to YYYY-mm-dd HH:MM:SS
     *
     * @param tp time point to format
     *
     * @return the time string formated 
     */
    std::string format_time(std::chrono::system_clock::time_point &&tp=std::chrono::system_clock::now()) noexcept;

}

#define LOG_INFO(info)\
    std::cout<<"["<<common::format_time()<<"][INFO] "<<info<<std::endl;

#define LOG_ERROR(info)\
    std::cout<<"["<<common::format_time()<<"][ERROR] "<<info<<std::endl;
