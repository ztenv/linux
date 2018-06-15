#pragma once

#include <boost/atomic.hpp>
#include <boost/thread/condition.hpp>
#include "IDataAccess.h"
#include "common.h"
#include "occi.h"

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
        std::string m_conStr;
    };
}

