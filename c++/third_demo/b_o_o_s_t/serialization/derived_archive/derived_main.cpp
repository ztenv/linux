#include <iostream>
#include <string>
#include <sstream>
#include <vector>

#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>

#include <boost/serialization/vector.hpp>

#include "../user.h"

class CStudent:public CUser
{
public:
    friend boost::serialization::access;
    CStudent():CUser()
    {
    }

    CStudent(const std::string &name,const std::string &sex,int age):CUser(name,sex,age)
    {
    }
    virtual ~CStudent()
    {
    }

    std::vector<double> &scores()
    {
        return m_scores;
    }

    template<typename Archive>
    void serialize(Archive &ar,const unsigned int version)
    {
        ar & boost::serialization::base_object<CUser>(*this);
        ar & m_scores;
    }
    friend std::ostream &operator<<(std::ostream &oss,CStudent &u)
    {
        std::stringstream ss;
        std::vector<double> scores=u.scores();
        for(size_t i=0;i<scores.size();++i)
        {
            if(i!=0)
            {
                ss<<",";
            }
            ss<<scores[i];
        }
        oss<<"name:"<<u.name()<<"|sex:"<<u.sex()<<"|age:"<<u.age()<<"|"<<ss.str();
        return oss;
    }
private:
    std::vector<double> m_scores;
};

using namespace std;

int main(int argc,char * argv[])
{
    CStudent user("shlian","男",26);
    user.scores().push_back(100);
    user.scores().push_back(110);
    user.scores().push_back(99);

    stringstream ss;
    boost::archive::text_oarchive ar(ss);
    ar <<user;
    cout<<user<<endl;
    cout<<ss.str()<<endl;

    cout<<endl<<"load data from stream"<<endl;
    CStudent user2;
    boost::archive::text_iarchive iar(ss);
    iar>>user2;
    cout<<user2<<endl;

    return 0;
}
