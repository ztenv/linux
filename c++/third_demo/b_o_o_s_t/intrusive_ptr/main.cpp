#include <iostream>
#include <new>
#include <string>

#include <gflags/gflags.h>

#include <boost/smart_ptr/intrusive_ptr.hpp>

#include "demo.h"

DEFINE_string(test,"","use gflags test");

int main(int argc, char *argv[])
{
    gflags::SetUsageMessage("Usage");
    gflags::ParseCommandLineFlags(&argc,&argv,true);

    demoIPtr demoptr=boost::intrusive_ptr<demo>(new(std::nothrow) demo("first"));//will be destoried automaticly
    demo *pdemo=new(std::nothrow) demo("second");//will be destoried automaticly

    auto ptr=pdemo->self();
    auto ptr2=pdemo->self();

    auto ptr3=boost::intrusive_ptr<demo>(pdemo);// It is right
    auto ptr4=boost::intrusive_ptr<demo>(pdemo);// It is right
    auto ptr5=boost::intrusive_ptr<demo>(pdemo);// It is right,this is the main difference between intrusive_ptr and shared_ptr 

    auto ptrx=demoptr->self();

    
    return 0;
}
