#include <iostream>

using namespace std;

class Father
{
public:
    Father(const char * a)
    {
        cout<<"Father:"<<a<<endl;
    }
    virtual ~Father()
    {
    }
};

class Son:public Father
{
public:
    Son():Father("b")
    {
        cout<<"Son:"<<endl;
    }
    virtual ~Son()
    {
    }
};

int main(int argc,char *argv[])
{
    Father f("f");
    Son s;
    return 0;
}
//编译完成后，会生成main文件，可以使用strace ./main 命令来跟踪main程序的运行情况
