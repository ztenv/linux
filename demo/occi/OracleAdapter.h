/**
 * @file OracleAccess.h
 * @brief Oracle访问接口
 * @author shlian
 * @version 1.0
 * @date 2018-10-23
 */

#pragma once
#include <memory>
#include <string>

#include <occi.h>


namespace database{

    /**
     * @brief oracle数据库访问接口，目前只支持查询，暂不支持增加、删除、修改
     */
    class COracleAdapter final
    {
    public:
        /**
         * @brief 把oracle的ResultSet声明ResultSetPtr的shared_ptr
         */
        typedef std::shared_ptr<oracle::occi::ResultSet> ResultSetPtr;
    public:
        COracleAdapter()=default;
        ~COracleAdapter()=default;
        COracleAdapter(const COracleAdapter &)=delete;
        COracleAdapter(const COracleAdapter &&)=delete;
        COracleAdapter & operator=(const COracleAdapter &)=delete;
        COracleAdapter & operator=(const COracleAdapter &&)=delete;

        /**
         * @brief 初始化环境
         *
         * @return 0:成功，其他:失败
         */
        int Initialize();

        /**
         * @brief 连接数据库
         *
         * @param[in] url 访问数据库的url，形如：127.0.0.1:1521
         * @param[in] SID 数据库实例的ID
         * @param[in] userName 用户名
         * @param[in] pwd 密码
         *
         * @return 0:成功，其他:失败
         */
        int Connect(const std::string &url="127.0.0.1:1521",const std::string &SID="orcl",const std::string &userName="ogg",const std::string &pwd="ogg");

        /**
         * @brief 执行查询语言
         *
         * @param[in] sql 查询语句的sql
         *
         * @return 结果集的shared_ptr
         */
        ResultSetPtr ExecuteQuery(const std::string &sql);

        /**
         * @brief 关闭连接
         *
         * @return 0:成功，其他:失败
         */
        int Close();

        /**
         * @brief 反初始化，释放资源
         */
        void DeInitialize();

    private:
        oracle::occi::Environment *m_env=NULL;
        oracle::occi::Connection *m_con=NULL;
        oracle::occi::Statement *m_statement=NULL;
    };
    typedef std::shared_ptr<COracleAdapter> COracleAdapterPtr;
}

