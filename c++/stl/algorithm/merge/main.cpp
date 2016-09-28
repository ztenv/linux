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

    {//升序集合合并
        IntVector v1;
        IntVector v2;
        v1.reserve(10);
        v2.reserve(10);

        //for(int i=19;i>=0;--i)
        for(int i=0;i<20;++i)
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
        //合并两个有序的v1,v2集合，默认使用<比较，合并过程中存在重新排序的可能
        std::merge(v1.begin(),v1.end(),v2.begin(),v2.end(),v3.begin());
        print("v3",v3);
    }

    {//降序集合合并
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
        //合并两个有序的v1,v2集合，默认使用<比较，合并过程中存在重新排序的可能
        std::merge(v1.begin(),v1.end(),v2.begin(),v2.end(),v3.begin());
        print("v3",v3);
    }
    return 0;
}
