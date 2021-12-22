#include <iostream>
#include <string>
#include <unordered_map>
#include <fmt/format.h>

template<typename T>
void print(T &m)
{
    for(auto & item : m){
        std::cout << fmt::format("<{},{}>\n", item.first, item.second);
    }
}

int main()
{
    std::unordered_map<int, std::string> umap = {{1, "10"}};

    for(int i = 0; i < 10; ++i) {
        umap.emplace(std::pair(i, std::to_string(i)));
    }
    print(umap);

    std::unordered_map<int, std::string> umap2 = {{1, "100"}, {-1, "-1"}};
    std::cout << "umap.merge(umap2):" << std::endl;
    umap.merge(umap2);

    print(umap);
    return 0;
}
