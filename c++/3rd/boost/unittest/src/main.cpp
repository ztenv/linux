#define BOOST_TEST_NO_MAIN
#define BOOST_TEST_ALTERNATIVE_INIT_API
#include <boost/test/included/unit_test.hpp>


using namespace boost::unit_test;

bool init_unit_test()
{
    return true;
}



int main(int argc,char *argv[])
{
    return boost::unit_test::unit_test_main(&init_unit_test,argc,argv);
}
