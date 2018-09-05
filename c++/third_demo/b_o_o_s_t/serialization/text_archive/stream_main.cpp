#include <iostream>
#include <string>
#include <sstream>
#include <vector>

#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>
using namespace std;

/**
 * @brief 用于boost::serialization测试的用户类
 */
class CUser{
public:
    CUser():m_age(0)
    {
    }
    CUser(const std::string name,const std::string sex,int age):m_name(name),m_sex(sex)
                                                                ,m_age(age)
    {
    }

    ~CUser()
    {
    }

    string name() const
    {
        return m_name;
    }
    void name(const string &Name)
    {
        m_name=Name;
    }

    string sex() const
    {
        return m_sex;
    }
    void sex(const string &Sex)
    {
        m_sex=Sex;
    }

    int age() const
    {
        return m_age;
    }
    void age(int Age)
    {
        m_age=Age;
    }


    /**
     * @brief 序列化、反序列化的函数
     *
     * @tparam Archive
     * @param[in] ar
     * @param[in] version
     */
    template<typename Archive>
    void serialize(Archive &ar,const unsigned int version)
    {
        ar & m_name;
        ar & m_sex;
        ar & m_age;
    }

    friend std::ostream &operator<<(std::ostream &oss,const CUser &u)
    {
        oss<<"name:"<<u.name()<<"|sex:"<<u.sex()<<"|age:"<<u.age();
        return oss;
    }

private:
    string m_name;
    string m_sex;
    int m_age;
};

int main(int argc,char * argv[])
{
    CUser user("shlian","男",25);

    stringstream ss;
    boost::archive::text_oarchive ar(ss);
    ar <<user;
    cout<<user<<endl;
    cout<<ss.str()<<endl;

    cout<<endl<<"load data from stream"<<endl;
    CUser user2;
    boost::archive::text_iarchive iar(ss);
    iar>>user2;
    cout<<user2<<endl;

    return 0;
}
