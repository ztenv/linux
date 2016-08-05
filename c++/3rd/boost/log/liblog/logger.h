#pragma once
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

namespace xbrother{
namespace log{

namespace logging = boost::log;
namespace attrs = boost::log::attributes;
namespace src = boost::log::sources;
namespace sinks = boost::log::sinks;
namespace expr = boost::log::expressions;
namespace keywords = boost::log::keywords;

typedef src::severity_logger<logging::trivial::severity_level> LogType;

class Logger
{
public:
    ~Logger(){}
    static int Initialize()
    {
        try
        {
            // Create a text file sink
            typedef sinks::synchronous_sink< sinks::text_file_backend > file_sink;
            boost::shared_ptr< file_sink > sink(new file_sink(
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
                % expr::attr<logging::trivial::severity_level>("Severity")
                % expr::smessage
                );
            logging::add_common_attributes();
            return 0;
        }
        catch (std::exception& e)
        {
            std::cout << "FAILURE: " << e.what() << std::endl;
            return 1;
        }
    }
    static boost::shared_ptr<LogType> getLogInstance()
    {
        if(m_logPtr.get()==NULL)
        {
            m_logPtr=boost::shared_ptr<LogType>(new LogType());
        }
        return m_logPtr;
    }

    static void UnInitialize()
    {
        logging::core::get()->remove_all_sinks();
    }
private:
    static boost::shared_ptr<LogType> m_logPtr;

    Logger(){}
};
}
}

#define LOG_TRACE(loginfo) \
     BOOST_LOG_SEV(*xbrother::log::Logger::getLogInstance(),boost::log::trivial::trace) <<loginfo;
#define LOG_DEBUG(loginfo)\
    BOOST_LOG_SEV(*xbrother::log::Logger::getLogInstance(),boost::log::trivial::debug)<<loginfo;
#define LOG_INFO(loginfo) \
    BOOST_LOG_SEV(*xbrother::log::Logger::getLogInstance(),boost::log::trivial::info)<<loginfo;
#define LOG_WARN(loginfo)\
    BOOST_LOG_SEV(*xbrother::log::Logger::getLogInstance(),boost::log::trivial::warning)<<loginfo;
#define LOG_ERROR(loginfo) \
    BOOST_LOG_SEV(*xbrother::log::Logger::getLogInstance(),boost::log::trivial::error)<<loginfo;
#define LOG_FATAL(loginfo)\
    BOOST_LOG_SEV(*xbrother::log::Logger::getLogInstance(),boost::log::trivial::fatal)<<loginfo;



