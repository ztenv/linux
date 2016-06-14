#include <iostream>
#include <list>
#include <algorithm>

using namespace std;


/**
 * @brief �ж��Ƿ�Ϊ����
 */
class IsOddNum
{
public:
    bool operator()(int &num)
    {
        return num%2==0;
    }
};


/**
 * @brief ���Ԫ�ص�functor
 */
class Print
{
public:

    /**
     * @brief    operator () ������
     *
     * @param[in] num �����������
     */
    void operator()(int &num)
    {
        cout<<num<<",";
    }
};

int main(int argc,char *argv[])
{
    list<int> li;

    for(int i=-100;i<100;++i)
    {
        li.push_back(i);
    }
    
    std::remove_if(li.begin(),li.end(),IsOddNum());
    std::for_each(li.begin(),li.end(),Print());

    return 0;
}
