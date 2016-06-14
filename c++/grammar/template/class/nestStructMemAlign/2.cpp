#include <iostream>

using namespace std;

template<typename T>
class Pack
{
#pragma pack(push)
#pragma pack(1)
    struct DH
    {
        short a;
        short b;
        short c;
        int d;
    };
#pragma pack(pop)
public:
    void print()
    {
        cout<<sizeof(DH)<<endl;
    }
private:
    T data;
};

int main(int argc,char * argv[])
{
    Pack<int> k;
    k.print();
    return 0;
}



