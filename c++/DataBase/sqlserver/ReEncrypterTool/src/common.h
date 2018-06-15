#pragma once
/**
 * @file common.h
 * @brief 公共头文件
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#include <string>
#include <list>
#include <boost/shared_ptr.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

namespace kingdom{
    /**
     * @brief 数据记录结构体
     */
    struct ST_DataRecord{
    public:
        ST_DataRecord():UserRole(-1),UserScope(-1),AuthType(-1),AuthDataType(-1)
        {
            UserCode[0]=0;
            AuthData[0]=0;
            AuthNewData[0]=0;
        }
        ~ST_DataRecord()
        {}

        /**
         * @brief 用户代码
         */
        char UserCode[20];
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
         * @brief 旧的密文
         */
        char AuthData[257];
        /**
         * @brief 用于存储新的(国密)密文
         */
        char AuthNewData[257];
    };
    typedef boost::shared_ptr<ST_DataRecord> ST_DataRecordPtr;
    typedef std::list<ST_DataRecordPtr> DataRecordList;

    /**
     * @brief 操作结果
     */
    struct ST_Result{
    public:
        ST_Result():UsedTime(0,0,0),SuccessfulRecordCount(0),FailingRecordCount(0),TotalRecordCount(0)
        {}
        ~ST_Result()
        {}

        /**
         * @brief 总耗时
         */
        boost::posix_time::time_duration UsedTime;
        /**
         * @brief 成功的记录数
         */
        unsigned long long SuccessfulRecordCount;
        /**
         * @brief 失败的记录数
         */
        unsigned long long FailingRecordCount;
        /**
         * @brief 总的记录数
         */
        long long TotalRecordCount;
        /**
         * @brief 失败记录的用户代码
         */
        std::list<std::string> FailingInfo;

        void dump();
        /**
         * @brief 输出操作符
         *
         * @param[in] oss    输出流
         * @param[in] result 操作结果
         *
         * @return 输出流本身
         */
        friend std::ostream & operator <<(std::ostream &oss,ST_Result &result);
    private:
        std::string m_fileName;
    };
    typedef boost::shared_ptr<ST_Result> ST_ResultPtr;

    /**
     * @brief 上下文
     */
    class Context{
    public:
        Context():m_dbName("kbssacct")
        {
#ifdef _WIN32
            m_ip="127.0.0.1";
#else
            m_ip="127.0.0.1:1521";
#endif
            m_resultPtr=ST_ResultPtr(new ST_Result());
        }
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
        void setUserName(const std::string &userName)
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
        void setPassword(const std::string &password)
        {
            m_password=password;
        }


        /**
         * @brief 获取数据库的ip
         *
         * @return 数据库的ip地址
         */
        std::string &getIP()
        {
            return m_ip;
        }

        /**
         * @brief 设置数据库的ip
         *
         * @param[in] ip 数据库的ip
         */
        void setIP(const std::string &ip)
        {
            m_ip=ip;
        }

        /**
         * @brief 获取数据库名
         *
         * @return 数据库名
         */
        std::string &getDBName()
        {
            return m_dbName;
        }

        /**
         * @brief 设置数据库名
         *
         * @param[in] dbName 数据库名
         */
        void setDBName(const std::string &dbName)
        {
            m_dbName=dbName;
        }

        /**
         * @brief 获取结果指针
         *
         * @return 结果指针
         */
        ST_ResultPtr getResultPtr()
        {
            return m_resultPtr;
        }
    private:
        ST_ResultPtr m_resultPtr;
        std::string m_userName;
        std::string m_password;
        std::string m_ip;
        std::string m_dbName;
    };
    typedef boost::shared_ptr<Context> ContextPtr;
}
