#pragma once

#include <iostream>
#include <string>

#include <boost/smart_ptr/intrusive_ptr.hpp>
#include <boost/smart_ptr/intrusive_ref_counter.hpp>

/**
 * @brief demo
 */
class demo final:public boost::intrusive_ref_counter<demo,boost::thread_safe_counter>
{
public:
    demo(const char *id):m_id(id)
    {
        std::cout<<m_id<<" ctor"<<std::endl;
    }

    ~demo()
    {
        std::cout<<m_id<<" dtor"<<std::endl;
    }
 
    demo(const demo &)=delete;
    demo& operator=(const demo &)=delete;
 
    demo(demo &&)=default;
    demo& operator=(demo &&)=default;

    boost::intrusive_ptr<demo> self();
 
private:
    std::string m_id;
};

using demoIPtr=boost::intrusive_ptr<demo>;


