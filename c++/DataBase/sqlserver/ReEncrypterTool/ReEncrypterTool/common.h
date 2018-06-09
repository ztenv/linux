#pragma once
/**
 * @file common.h
 * @brief ����ͷ�ļ�
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#include <string>
#include<boost/shared_ptr.hpp>

namespace kingdom{
        /**
         * @brief ���ݼ�¼�ṹ��
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
             * @brief �û�����
             */
            char UserCode[12];
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
             * @brief ����
             */
            char AuthData[257];
        };
        typedef boost::shared_ptr<ST_DataRecord> ST_DataRecordPtr;

        /**
         * @brief ������
         */
        class Context{
        public:
            Context()
            {}
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
            void setUserName(const std::string userName)
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
