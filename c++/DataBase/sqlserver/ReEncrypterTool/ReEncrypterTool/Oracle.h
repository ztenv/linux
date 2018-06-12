#pragma once

#include <boost/atomic.hpp>
#include <boost/thread/condition.hpp>
#include "IDataAccess.h"
#include "common.h"
#include "occi.h"

namespace kingdom{

    class COracle:public IDataAccess
    {
    public:
        COracle();
        virtual ~COracle();

    protected:
        DataRecordList m_list;
        boost::atomic<bool> m_isReady;
        boost::condition_variable m_cv;
        boost::mutex m_mutex;
        boost::atomic<bool> m_runFlag;

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

