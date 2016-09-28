#include <iostream>
#include <vector>
#include <algorithm>
#include <iterator>

using namespace std;
typedef vector<int> IntVector;

void print(const char * name,IntVector &v)
{
    cout<<name<<"[]=";
    for(size_t i=0;i<v.size();++i)
    {
        cout<<v[i]<<" ";
    }
    cout<<endl;
}

int main(int argc,char *argv[])
{
    IntVector v1;
    IntVector v2;
    v1.reserve(10);
    v2.reserve(10);

    for(int i=19;i>=0;--i)
    {
        if(i%2==0)
        {
            v1.push_back(i);
        }else{
            v2.push_back(i);
        }
    }

    print("v1",v1);
    print("v2",v2);

    IntVector v3(v1.size()+v2.size());
    std::copy(v1.begin(),v1.end(),v3.begin());
    print("v3",v3);

    IntVector v4(v1.size()+v2.size());
    std::copy(v1.begin(),v1.end(),v4.begin());
    std::copy(v2.begin(),v2.end(),v4.begin()+v1.size());
    print("v4",v4);
    return 0;
}
