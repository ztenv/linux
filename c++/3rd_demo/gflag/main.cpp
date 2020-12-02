#include <iostream>

#include <gflags/gflags.h>

DEFINE_string(data_path,"./config/","data path");
DEFINE_string(config_path,"./data/","config path");
DEFINE_bool(is_check,false,"check flag");

using namespace std;

int main(int argc,char *argv[])
{
    google::ParseCommandLineFlags(&argc,&argv,true);

    cout<<"argc="<<argc<<endl;
    cout<<"data_path="<<FLAGS_data_path<<endl;
    cout<<"config_path="<<FLAGS_config_path<<endl;
    cout<<"is_check="<<FLAGS_is_check<<endl;

    return 0;
}
