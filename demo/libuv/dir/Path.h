/**
 * @file Path.h
 * @brief 目录操作类
 * @author shlian
 * @version 1.0
 * @date 2018-10-17
 */

#pragma once
#include <uv.h>

namespace uvframe{
    namespace oggAgent{

        /**
         * @brief 文件操作辅助类，判断文件是否存在、创建目录、删除目录等
         */
        class Path
        {
        public:
            Path()=delete;
            ~Path()=delete;

            static int exists(const char *path)
            {
                uv_fs_t req;
                return uv_fs_access(NULL,&req,path,0,NULL);
            }

            static int mkdir(const char *path)
            {
                uv_fs_t req;
                return uv_fs_mkdir(NULL,&req,path,0774,NULL);
            }

            static int rmdir(const char *path)
            {
                uv_fs_t req;
                return uv_fs_rmdir(NULL,&req,path,NULL);
            }
        };
    }
}
