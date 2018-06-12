#pragma once
/**
 * @file common.h
 * @brief ����ͷ�ļ�
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
     * @brief ���ݼ�¼�ṹ��
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
         * @brief �û�����
         */
        char UserCode[20];
        /**
         * @brief �û���ɫ
         */
        char UserRole;
        /**
         * @brief �û����
         */
        char UserScope;
        /**
         * @brief ��֤����
         */
        char AuthType;
        /**
         * @brief �������ͣ�0�ϵ����ģ�1����������
         */
        char AuthDataType;
        /**
         * @brief �ɵ�����
         */
        char AuthData[257];
        /**
         * @brief ���ڴ洢�µ�(����)����
         */
        char AuthNewData[257];
    };
    typedef boost::shared_ptr<ST_DataRecord> ST_DataRecordPtr;
    typedef std::list<ST_DataRecordPtr> DataRecordList;

    /**
     * @brief �������
     */
    struct ST_Result{
    public:
        ST_Result():UsedTime(0,0,0),SuccessfulRecordCount(0),FailingRecordCount(0),TotalRecordCount(0)
        {}
        ~ST_Result()
        {}

        /**
         * @brief �ܺ�ʱ
         */
        boost::posix_time::time_duration UsedTime;
        /**
         * @brief �ɹ��ļ�¼��
         */
        unsigned long long SuccessfulRecordCount;
        /**
         * @brief ʧ�ܵļ�¼��
         */
        unsigned long long FailingRecordCount;
        /**
         * @brief �ܵļ�¼��
         */
        long long TotalRecordCount;
        /**
         * @brief ʧ�ܼ�¼���û�����
         */
        std::list<std::string> FailingInfo;

        void dump();
        /**
         * @brief ���������
         *
         * @param[in] oss    �����
         * @param[in] result �������
         *
         * @return ���������
         */
        friend std::ostream & operator <<(std::ostream &oss,ST_Result &result);
    private:
        std::string m_fileName;
    };
    typedef boost::shared_ptr<ST_Result> ST_ResultPtr;

    /**
     * @brief ������
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
         * @brief ��ȡ���ݿ���û���
         *
         * @return ���ݿ���û���
         */
        std::string &getUserName()
        {
            return m_userName;
        }

        /**
         * @brief �������ݿ���û���
         *
         * @param[in] userName ���ݿ���û���
         */
        void setUserName(const std::string &userName)
        {
            m_userName=userName;
        }

        /**
         * @brief ��ȡ���ݿ������
         *
         * @return ���ݿ������
         */
        std::string &getPassword()
        {
            return m_password;
        }

        /**
         * @brief �������ݿ������
         *
         * @param[in] password ���ݿ������
         */
        void setPassword(const std::string &password)
        {
            m_password=password;
        }


        /**
         * @brief ��ȡ���ݿ��ip
         *
         * @return ���ݿ��ip��ַ
         */
        std::string &getIP()
        {
            return m_ip;
        }

        /**
         * @brief �������ݿ��ip
         *
         * @param[in] ip ���ݿ��ip
         */
        void setIP(const std::string &ip)
        {
            m_ip=ip;
        }

        /**
         * @brief ��ȡ���ݿ���
         *
         * @return ���ݿ���
         */
        std::string &getDBName()
        {
            return m_dbName;
        }

        /**
         * @brief �������ݿ���
         *
         * @param[in] dbName ���ݿ���
         */
        void setDBName(const std::string &dbName)
        {
            m_dbName=dbName;
        }

        /**
         * @brief ��ȡ���ָ��
         *
         * @return ���ָ��
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
