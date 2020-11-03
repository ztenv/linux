#include <iostream>
#include <memory>

class test
{
public:
    test()
    {
        ++count;
        std::cout<<"ctor test:"<<count<<std::endl;
    }

    ~test()
    {
        --count;
        std::cout<<"dtor test:"<<count<<std::endl;
    }
private:
    static int count;
};

typedef std::shared_ptr<test> testPtr;

using namespace std;

int test::count=0;

int main(int argc, char const* argv[])
{
    cout<<"start main"<<endl;
    {
        testPtr bufPtr=testPtr(new test[10],[](test *p)->void{delete []p;});
    }
    cout<<"exit main"<<endl;

    return 0;
}
