#pragma once
#include "common.h"

class B
{
public:
    B():m_length(MAX_SIZE)
    {
    }
    ~B()
    {
    }
    void print_info();
private:
    int m_length;
};
