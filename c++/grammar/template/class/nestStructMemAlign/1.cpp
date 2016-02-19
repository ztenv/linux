#include <iostream>

using namespace std;

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
    int data;
};

int main(int argc,char * argv[])
{
    Pack k;
    k.print();
    return 0;
}
