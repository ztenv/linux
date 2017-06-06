#pragma once
#include "common.h"

class A
{
public:
    A():m_size(MAX_SIZE)
    {}

    ~A()
    {}

    void print_info();
private:
    int m_size;
};
