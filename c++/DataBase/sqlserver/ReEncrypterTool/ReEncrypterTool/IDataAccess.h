/**
 * @file IDataAccess.h
 * @brief 数据库访问接口
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#pragma once
#include <boost/shared_ptr.hpp>
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
        ContextPtr m_contextPtr;
        /**
         * @brief 查询到的记录数
         */
        long m_recordCount;

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
    };
    typedef boost::shared_ptr<IDataAccess> IDataAccessPtr;
}
