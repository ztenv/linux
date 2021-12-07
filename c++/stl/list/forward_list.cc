#include <functional>
#include <iostream>
#include <forward_list>
#include <fmt/format.h>

template<typename T>
void print(T &fl)
{
    for(auto & ele : fl) {
        std::cout << fmt::format("{},", ele);
    }
    std::cout << std::endl;
}

int main()
{
    std::forward_list<int> fl = {1,2,3,4,5,6};
    print(fl);

    //fl.sort([](auto &first, auto &second) {return first > second;});
    fl.sort(std::greater_equal<int>());
    print(fl);

    fl.emplace_front(0);
    fl.push_front(-1);
    print(fl);

    std::forward_list<int> fl2 = {-1,-2,-3,-4,-5};
    fl2.sort([](auto & first, auto &second) { return first > second;});
    fl.sort([](auto &first, auto &second) {return first > second;});

    fl = fl2;
    print(fl);

    return 0;
}
