/*
 *          Copyright Andrey Semashev 2007 - 2015.
 * Distributed under the Boost Software License, Version 1.0.
 *    (See accompanying file LICENSE_1_0.txt or copy at
 *          http://www.boost.org/LICENSE_1_0.txt)
 */
/*!
 * \file   main.cpp
 * \author Andrey Semashev
 * \date   26.04.2008
 *
 * \brief  An example of logging into a rotating text file.
 *         See the library tutorial for expanded comments on this code.
 *         It may also be worthwhile reading the Wiki requirements page:
 *         http://www.crystalclearsoftware.com/cgi-bin/boost_wiki/wiki.pl?Boost.Logging
 */

// #define BOOST_LOG_DYN_LINK 1

#include <stdexcept>
#include <string>
#include <iostream>
#include <boost/smart_ptr/shared_ptr.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

#include "logger.h"

enum { LOG_RECORDS_TO_WRITE = 100 };

using namespace common::log;
int main(int argc, char* argv[])
{
    try
    {
        common::log::Logger::Initialize();
        for (unsigned int i = 0; i < LOG_RECORDS_TO_WRITE; ++i)
        {
            LOG_TRACE("Some Log record "<<i);
            LOG_DEBUG("Some Log record "<<i);
            LOG_INFO("Some Log record "<<i);
            LOG_WARN("Some Log record "<<i);
            LOG_ERROR("Some Log record "<<i);
            LOG_FATAL("Some Log record "<<i);
        }

        common::log::Logger::UnInitialize();
        return 0;
    }
    catch (std::exception& e)
    {
        std::cout << "FAILURE: " << e.what() << std::endl;
    }
    common::log::Logger::UnInitialize();
    return 1;
}
