/**
 * @file SqlServer.h
 * @brief SqlServer访问类
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#pragma once
#include <map>

#include "IDataAccess.h"
#include "common.h"

#import "c:\Program Files\Common Files\System\ado\msado15.dll" no_namespace rename("EOF","adoEOF") rename("BOF","adoBOF")

namespace kingdom{
    typedef std::map<boost::thread::id,_ConnectionPtr> ConnectionPoolMap;

    /**
     * @brief 连接池上下文
     */
    struct ST_ConnectionContext
    {
        /**
         * @brief 线程、数据库连接的数量
         */
        static const size_t ThreadCount=4;
        /**
         * @brief 简单连接池
         */
        ConnectionPoolMap ConnectionPool;
        /**
         * @brief 简单线程池
         */
        boost::thread_group ThreadGroup;
    };

    /**
     * @brief mssql server数据库访问类
     */
    class CSqlServer:public IDataAccess
    {
    public:
        CSqlServer();
        virtual ~CSqlServer();

    protected:
        _ConnectionPtr m_connection;
        _RecordsetPtr m_recordSet;
        ST_ConnectionContext m_ConnectionContext;

        virtual int initialize(ContextPtr contextPtr);
        virtual int connect();
        virtual int close();
        virtual int query();
        virtual void traversalResult();
        virtual void unInitialize();
    private:

        /**
         * @brief 开始事务
         *
         * @param[in] con 数据库的连接
         */
        inline void beginTrans(_ConnectionPtr con);

        /**
         * @brief 提交事件
         *
         * @param[in] con 数据库连接
         */
        inline void commitTrans(_ConnectionPtr con);

        /**
         * @brief 读取数据
         *
         * @param[in] record 存储数据的对象
         */
        inline void fetchData(ST_DataRecord &record);

        /**
         * @brief 更新数据库的记录
         */
        inline void updateRecord();

    };

}

