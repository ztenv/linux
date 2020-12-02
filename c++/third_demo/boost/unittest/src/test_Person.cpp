#include <string>

#include "../include/common.h"

using namespace std;

class Person
{
public:
    Person(const char *id,const char *name,unsigned short age=0):m_id(id),m_name(name),m_age(age)
    {
    }
    virtual ~Person()
    {
    }

    const char *getID()
    {
        return m_id.c_str();
    }
    const char *getName()
    {
        return m_name.c_str();
    }
    unsigned short getAge()
    {
        return m_age;
    }
private:
    string m_id;
    string m_name;
    unsigned short m_age;

};


struct Demo_Fixture:public Base_Fixture
{
    Demo_Fixture():p("1","Jobs",30)
    {
    }

    virtual ~Demo_Fixture()
    {
    }
    Person p;
};


BOOST_FIXTURE_TEST_SUITE(suit_demo,Demo_Fixture)

BOOST_AUTO_TEST_CASE(t_demo)
{
    BOOST_CHECK_EQUAL(1,1);
}

BOOST_AUTO_TEST_CASE(t_check_id)
{
    string id1(p.getID());
    string id2("1");
    BOOST_CHECK_EQUAL(id1,id2);
}

BOOST_AUTO_TEST_CASE(t_check_name)
{
    string name1(p.getName());
    string name2("Jobs");
    BOOST_CHECK_EQUAL(name1,name2);
}

BOOST_AUTO_TEST_CASE(t_check_age)
{
    BOOST_CHECK_EQUAL(p.getAge(),30);
    BOOST_CHECK_EQUAL(p.getAge(),10);
}

BOOST_AUTO_TEST_SUITE_END()
