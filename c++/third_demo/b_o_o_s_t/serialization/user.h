#include <string>
#include <vector>

#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>

#include <boost/archive/xml_oarchive.hpp>
#include <boost/archive/xml_iarchive.hpp>

#

/**
 * @brief 用于boost::serialization测试的用户类
 */
class CUser{
public:
    friend class boost::serialization::access;
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

    std::string name() const
    {
        return m_name;
    }
    void name(const std::string &Name)
    {
        m_name=Name;
    }

    std::string sex() const
    {
        return m_sex;
    }
    void sex(const std::string &Sex)
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
    std::string m_name;
    std::string m_sex;
    int m_age;
};
