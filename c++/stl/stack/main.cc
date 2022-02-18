#include <stack>
#include <iostream>

int main(int argc, char * argv[])
{
    std::stack<int> s1;

    for(int i = 0; i < 10; ++i) {
        s1.emplace(i);
    }

    std::cout<< s1.size() << std::endl;
    
    while(!s1.empty()) {
        std::cout<< s1.top() << std::endl;
        s1.pop();
    }
    return 0;
}
