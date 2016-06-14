#include <iostream>
#include <cstring>

#include <cstdio>

#include <sys/stat.h>
#include <sys/types.h>
#include <strings.h>

#include <mysql.h>


int main(int argc,char * argv[])
{
    MYSQL mysql;

    mysql_init(&mysql);

    if(!mysql_real_connect(&mysql,"127.0.0.1","root","888888","mysql",3306,NULL,0))
    {
        perror("mysql_real_connect error");
    }

    mysql_close(&mysql);
    return 0;
}
