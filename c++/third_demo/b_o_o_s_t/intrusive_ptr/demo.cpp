#include "demo.h"
#include "boost/smart_ptr/intrusive_ptr.hpp"

boost::intrusive_ptr<demo> demo::self()
{
    return boost::intrusive_ptr<demo>(this);
}
