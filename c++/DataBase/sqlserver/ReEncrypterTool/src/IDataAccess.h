/**
 * @file IDataAccess.h
 * @brief 数据库访问接口
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#pragma once
#include <boost/shared_ptr.hpp>
#include <boost/thread/shared_mutex.hpp>
#include <boost/atomic.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/condition_variable.hpp>

#include "common.h"

namespace kingdom{

    /**
     * @brief 数据库访问类
     */
    class IDataAccess
    {
    public:
        IDataAccess();
        virtual ~IDataAccess();

        /**
         * @brief 执行数据库的初始化、连接、查询、遍历、关闭、反初始化
         *
         * @param[in] contextPtr 上下文
         *
         * @return 0:成功，非0:失败
         */
        int doWork(ContextPtr contextPtr);

    protected:
        /**
         * @brief 高水位
         */
        static const size_t HIGHT_WATER_LEVEL=500000;

        /**
         * @brief 低水位
         */
        static const size_t LOW_WATER_LEVEL=10000;

        /**
         * @brief 上下文信息
         */
        ContextPtr m_contextPtr;

        /**
         * @brief 查询到的记录数
         */
        long m_recordCount;

        /**
         * @brief 记录列表
         */
        DataRecordList m_list;

        /**
         * @brief 线程需要的环境是否就绪
         */
        boost::atomic<bool> m_isReady;

        /**
         * @brief 线程等待就绪的条件
         */
        boost::condition_variable m_cv;

        /**
         * @brief m_list、m_cv的互斥锁
         */
        boost::mutex m_mutex;

        /**
         * @brief 运行状态
         */
        boost::atomic<bool> m_runFlag;

        /**
        * @brief 重加密，把AUTH_DATA的原始密文转换为国密密文
        *
        * @param[in] record    当前数据记录
        *
        * @return 大于0:成功，小于等于0:失败
        */
        int reEncrypt(ST_DataRecord &record);

        /**
         * @brief 初始化数据库
         *
         * @param[in] contextPtr 上下文指针
         *
         * @return 0:成功,非0:失败
         */
        virtual int initialize(ContextPtr contextPtr)=0;

        /**
         * @brief 连接数据库
         *
         * @return 0:成功,非0:失败
         */
        virtual int connect()=0;

        /**
         * @brief 关闭数据库
         *
         * @return 0:成功,非0:失败
         */
        virtual int close()=0;

        /**
         * @brief 查询
         *
         * @return 0:成功,非0:失败
         */
        virtual int query()=0;

        /**
         * @brief 遍历查询结果
         */
        virtual void traversalResult()=0;

        /**
         * @brief 反初始化
         */
        virtual void unInitialize()=0;

        /**
         * @brief 等待
         *
         * @param[in] mu 锁
         * @param[in] cv 条件
         */
        void wait(boost::mutex &mu,boost::condition_variable &cv)
        {
            boost::unique_lock<boost::mutex> locker(mu);
            while(m_list.size()>HIGHT_WATER_LEVEL)
            {
                cv.wait(locker);
            }
        }

        /**
         * @brief 通知
         *
         * @param[in] mu 锁
         * @param[in] cv 条件
         */
        void notify(boost::mutex &mu,boost::condition_variable &cv)
        {
            boost::unique_lock<boost::mutex> locker(mu);
            if(m_list.size()<LOW_WATER_LEVEL)
            {
                cv.notify_all();
            }
        }
    };
    typedef boost::shared_ptr<IDataAccess> IDataAccessPtr;
}
