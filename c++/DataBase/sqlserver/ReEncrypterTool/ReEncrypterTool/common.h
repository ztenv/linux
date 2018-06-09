#pragma once
/**
 * @file common.h
 * @brief 公共头文件
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#include <string>
#include<boost/shared_ptr.hpp>

namespace kingdom{
        /**
         * @brief 数据记录结构体
         */
        struct ST_DataRecord{
        public:
            ST_DataRecord():UserRole(-1),UserScope(-1),AuthType(-1),AuthDataType(-1)
            {
                AuthData[0]=0;
                UserCode[0]=0;
            }
            ~ST_DataRecord()
            {}

            /**
             * @brief 用户代码
             */
            char UserCode[12];
            /**
             * @brief 用户角色
             */
            char UserRole;
            /**
             * @brief 用户类别
             */
            char UserScope;
            /**
             * @brief 认证类型
             */
            char AuthType;
            /**
             * @brief 密文类型：0老的密文，1：国密密文
             */
            char AuthDataType;
            /**
             * @brief 密文
             */
            char AuthData[257];
        };
        typedef boost::shared_ptr<ST_DataRecord> ST_DataRecordPtr;

        /**
         * @brief 上下文
         */
        class Context{
        public:
            Context()
            {}
            ~Context()
            {}

            /**
             * @brief 获取数据库的用户名
             *
             * @return 数据库的用户名
             */
            std::string &getUserName()
            {
                return m_userName;
            }

            /**
             * @brief 设置数据库的用户名
             *
             * @param[in] userName 数据库的用户名
             */
            void setUserName(const std::string userName)
            {
                m_userName=userName;
            }

            /**
             * @brief 获取数据库的密码
             *
             * @return 数据库的密码
             */
            std::string &getPassword()
            {
                return m_password;
            }

            /**
             * @brief 设置数据库的密码
             *
             * @param[in] password 数据库的密码
             */
            void setPassword(const std::string password)
            {
                m_password=password;
            }
        private:
            std::string m_userName;
            std::string m_password;
        };
        typedef boost::shared_ptr<Context> ContextPtr;
}
