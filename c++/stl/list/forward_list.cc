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

    fl.sort([](auto &first, auto &second){return first > second;});
    print(fl);

    fl.emplace_front(0);
    fl.push_front(-1);
    print(fl);

    return 0;
}
