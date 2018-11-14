/**
 * @file ShellWrapper.h
 * @brief 带超时功能的shell命令执行器
 * @author shlian
 * @version 1.0
 * @date 2018-11-12
 */

#pragma once
#include <string>
#include <sstream>
#include <atomic>

namespace uvframe{
    namespace oggAgent{

        class CShellWrapper final
        {
        public:
            CShellWrapper()=delete;
            ~CShellWrapper()=default;

            /**
             * @brief 执行shell命令
             *
             * @param[in] cmd    待执行的shell命令，如：top、ls -l等
             * @param[in] output 命令执行的输出流
             * @param[in] timeout 超时时间，单位:ms，默认为永不超时
             */
            static void run(std::string &&cmd,std::stringstream &output,size_t timeout=0);
        };
    }
}
