#include <algorithm>
#include <string>
#include <vector>
#include <iostream>
#include <fmt/format.h>

template<typename T>
void print(T v)
{
    for(auto & ele : v) {
        std::cout << fmt::format("{} ", ele);
    }
    std::cout << std::endl;
}

int main()
{
    std::vector<int> vec1 = {1, 2, 3, 4, 5, 5, 7, 9, 8, 9, 1, 3, 2, 0, -1, -2, -3};
    print(vec1);

    auto res = std::erase(vec1, -1);
    std::cout << "removed: " << res << std::endl;
    print(vec1);

    // remove even element
    res = std::erase_if(vec1, [](auto & ele) { return ele % 2 == 0; });
    std::cout << "removed: " << res << std::endl;
    print(vec1);

    //sort
    std::sort(vec1.begin(), vec1.end(), []( auto & ele1, auto & ele2) { return ele1 < ele2;});
    print(vec1);

    std::sort(vec1.begin(), vec1.end(), []( auto & ele1, auto & ele2) { return ele1 > ele2;});
    print(vec1);


    return 0;
}
