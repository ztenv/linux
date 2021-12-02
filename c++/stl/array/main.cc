#include <exception>
#include <iostream>
#include <array>

int main()
{
    std::array<int, 10> array1 = {0, 1, 2};

    for(auto & ele : array1) {
        std::cout << ele << std::endl;
    }

    array1[10] = 100; // unsafe
    std::cout << array1[10] <<std::endl; // unsafe

    try {
        std::cout << array1.at(10) << std::endl;
    } catch(std::exception &e) {
        std::cout << e.what() << std::endl;
    }

    auto array2 = std::to_array({1,2,3,4,5});
    for(auto & ele : array2) {
        std::cout << ele << std::endl;
    }

    auto array3 = std::to_array("abcdefg");
    for(auto & ele : array3) {
        std::cout << ele << std::endl;
    }

    return 0;
}
