#include <iostream>
#include <map>
#include <fmt/format.h>

template<typename T>
void print(T &m)
{
    for(auto & item : m) {
        std::cout << fmt::format("<{},{}> ", item.first, item.second);
    }
    std::cout << std::endl;
}

int main()
{
    std::map<std::string, int> map1 = {{"1",1},{"2",2},{"3",3}};
    print(map1);

    std::cout << "extrace 1 and move to 4:" << std::endl;
    auto node = map1.extract("1");
    node.key() = "4";
    map1.insert(std::move(node));
    print(map1);

    std::map<std::string, int> map2 = {{"0",0},{"1",1}};
    std::cout << "map2:" << std::endl;
    print(map2);

    std::cout << "map1.merge(map2):" << std::endl;
    map1.merge(map2);
    print(map1);

    std::cout << "erase key == 1:" << std::endl;
    std::erase_if(map1, [](auto &item){return item.first == "1";});
    print(map1);

    return 0;
}
