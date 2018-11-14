安装完成oracle相关的basic、devel、sqlplus三个rpm包以后，需要在/etc/ld.so.conf文件配置lib库的路径，然后执行sudo ldconfig，否则会出现链接错误
