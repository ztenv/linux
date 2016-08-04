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

#include <boost/log/common.hpp>
#include <boost/log/expressions.hpp>
#include <boost/log/attributes.hpp>
#include <boost/log/support/date_time.hpp>
#include <boost/log/sources/logger.hpp>
#include <boost/log/sinks/sync_frontend.hpp>
#include <boost/log/sinks/text_file_backend.hpp>
#include <boost/log/utility/setup/common_attributes.hpp>
#include <boost/log/trivial.hpp>
#include <boost/log/utility/setup/console.hpp>

namespace logging = boost::log;
namespace attrs = boost::log::attributes;
namespace src = boost::log::sources;
namespace sinks = boost::log::sinks;
namespace expr = boost::log::expressions;
namespace keywords = boost::log::keywords;

using boost::shared_ptr;

enum { LOG_RECORDS_TO_WRITE = 100 };

//enum Log_Level
//{
//    Trace,
//    Debug,
//    Info,
//    Warn,
//    Error,
//    Fatal
//};
//        const char *levelname[]={"Trace","Debug","Info","Warn","Error","Fatal"};

int main(int argc, char* argv[])
{
    try
    {
        // Create a text file sink
        typedef sinks::synchronous_sink< sinks::text_file_backend > file_sink;
        shared_ptr< file_sink > sink(new file_sink(
            keywords::file_name = "%Y%m%d_%H%M%S_%5N.log",      // file name pattern
            keywords::rotation_size =20*1024*1024                     // rotation size, in characters
            ));

        // Set up where the rotated files will be stored
        sink->locked_backend()->set_file_collector(sinks::file::make_collector(
            keywords::target = "logs",                          // where to store rotated files
            keywords::max_size = 160 * 1024 * 1024,              // maximum total size of the stored files, in bytes
            keywords::min_free_space = 100 * 1024 * 1024,       // minimum free space on the drive, in bytes
            keywords::max_files = 512                           // maximum number of stored files
            ));

        // Upon restart, scan the target directory for files matching the file_name pattern
        sink->locked_backend()->scan_for_files();

        sink->set_formatter
        (
            expr::format("[%1%]<%2%>[%3%]-%4%")
            % expr::format_date_time<boost::posix_time::ptime>("TimeStamp","%Y-%m-%d %H:%M:%S.%f")//yyyy-MM-dd HH:mm:ss.ssss
            % expr::attr<boost::log::attributes::current_thread_id::value_type>("ThreadID")
            //% expr::attr<Log_Level>("Severity")
            % expr::attr<logging::trivial::severity_level>("Severity")
            % expr::smessage
        );

        // Add it to the core
        logging::core::get()->add_sink(sink);
        logging::add_console_log(std::clog)->set_formatter(
            expr::format("[%1%]<%2%>[%3%]-%4%")
            % expr::format_date_time<boost::posix_time::ptime>("TimeStamp","%Y-%m-%d %H:%M:%S.%f")//yyyy-MM-dd HH:mm:ss.ssss
            % expr::attr<boost::log::attributes::current_thread_id::value_type>("ThreadID")
            //% expr::attr<Log_Level>("Severity")
            % expr::attr<logging::trivial::severity_level>("Severity")
            % expr::smessage
            );

        // Add some attributes too
        logging::add_common_attributes();

        // Do some logging
        //src::severity_logger<Log_Level> lg;
        src::severity_logger<logging::trivial::severity_level> lg;
        for (unsigned int i = 0; i < LOG_RECORDS_TO_WRITE; ++i)
        {
            BOOST_LOG_SEV(lg,logging::trivial::trace) << "Some log record"<<i;
            BOOST_LOG_SEV(lg,logging::trivial::debug) << "Some log record"<<i;
            BOOST_LOG_SEV(lg,logging::trivial::info) << "Some log record"<<i;
            BOOST_LOG_SEV(lg,logging::trivial::warning) << "Some log record"<<i;
            BOOST_LOG_SEV(lg,logging::trivial::error) << "Some log record"<<i;
            BOOST_LOG_SEV(lg,logging::trivial::fatal) << "Some log record"<<i;
        }

        return 0;
    }
    catch (std::exception& e)
    {
        std::cout << "FAILURE: " << e.what() << std::endl;
        return 1;
    }
}
