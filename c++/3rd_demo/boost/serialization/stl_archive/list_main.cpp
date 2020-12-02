#include <iostream>
#include <list>
#include <sstream>

#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>
#include <boost/serialization/list.hpp>

using namespace std;

typedef std::list<int> ListType;
class CInfo
{
public:
    CInfo()
    {
    }
    ~CInfo()
    {
    }

    ListType &getList()
    {
        return m_list;
    }

    template<typename Archive>
    void serialize(Archive &ar,const unsigned int version)
    {
        ar & m_list;
    }
    friend std::ostream & operator<<(std::ostream & oss,CInfo info)
    {
        ListType::iterator iter=info.getList().begin();
        bool first=true;
        while(iter!=info.getList().end())
        {
            if(!first)
            {
                oss<<"|";
            }
            oss<<*iter++;
            first=false;
        }
        return oss;
    }
private:
    ListType m_list;
};

int main(int argc,char * argv[])
{
    CInfo info;
    info.getList().push_back(1);
    info.getList().push_back(100);
    cout<<info<<endl;

    std::stringstream ss;
    boost::archive::text_oarchive oar(ss);
    oar<<info;
    cout<<ss.str()<<endl;

    CInfo info2;
    boost::archive::text_iarchive iar(ss);
    iar>>info2;
    cout<<info2<<endl;

    return 0;
}
