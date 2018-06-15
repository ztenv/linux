/**
 * @file Oracle.h
 * @brief Oracle访问类
 * @author shlian
 * @version 1.0
 * @date 2018/06/13
 */
#pragma once
#include <map>

#include <boost/atomic.hpp>
#include <boost/thread/condition.hpp>

#include "occi.h"
#include "common.h"
#include "IDataAccess.h"

namespace kingdom{

    /**
     * @brief oracle 数据库访问类
     */
    class COracle:public IDataAccess
    {
    public:
        COracle();
        virtual ~COracle();

    protected:

        virtual int initialize(ContextPtr contextPtr);
        virtual int connect();
        virtual int close();
        virtual int query();
        virtual void traversalResult();
        virtual void unInitialize();

    private:
        oracle::occi::Environment *m_env;
        oracle::occi::Connection *m_con;
        oracle::occi::Statement *m_stat;
        oracle::occi::ResultSet *m_recordSet;
        ST_ConnectionContext<oracle::occi::Connection*> m_ConnectionContext;
        std::string m_conStr;

        /**
         * @brief 从数据库读取数据
         *
         * @param[in] record 存储数据的变量
         */
        inline void fetchData(ST_DataRecord &record);

        /**
         * @brief 更新数据到数据库
         */
        void updateRecord();
    };
}

