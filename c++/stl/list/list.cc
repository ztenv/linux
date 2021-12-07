#include <iostream>
#include <list>
#include <fmt/format.h>

template<typename T>
void print(T &l)
{
    for(auto & item : l) {
        std::cout << fmt::format("{},", item);
    }
    std::cout << std::endl;
}

int main()
{
    std::list<int> l1 = {-1, -2, 0, 3, -3, 3, 0, 1, 2, 5};
    std::list<int> l2 = {4, 6, 7, 9, 10, 2, -1, -2, -5};

    std::cout << "l1 : ";
    print(l1);
    std::cout << "l2 : ";
    print(l2);

    l1.sort();
    l2.sort();

    std::cout << "sort : " << std::endl;
    print(l1);
    print(l2);

    std::cout << "merge : ";
    l1.merge(l2);
    print(l1);

    l1.unique();
    std::cout << "unique : ";
    print(l1);

    l1.splice(l2.cbegin(), l2);
    std::cout << "splice : " << std::endl;
    std::cout << "l1 : ";
    print(l1);
    std::cout << "l2 : ";
    print(l2);

    return 0;
}
