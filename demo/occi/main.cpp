#include "OracleAdapter.h"
#include <iostream>

using namespace std;
using namespace database;

int main(int argc,char *argv[])
{
    COracleAdapterPtr oraclePtr=std::make_shared<COracleAdapter>();

    oraclePtr->Initialize();
    oraclePtr->Connect("192.168.80.128:1521","orcl","ogg","ogg");

    while(true)
    {
        COracleAdapter::ResultSetPtr rsPtr=oraclePtr->ExecuteQuery("select OWNER,TABLE_NAME from all_tables");
        while(rsPtr->next())
        {
            cout<<rsPtr->getString(1)<<"|"<<rsPtr->getString(2)<<endl;
        }
    }

    oraclePtr->Close();

    oraclePtr->DeInitialize();

    return 0;
}
