// if block with the init statement, to check the compiler supporting C++17
// clang++ -std=c++17 -stdlib=libc++ -Wall -pedantic if_test.cpp -o if_test

#include <iostream>

int main() {
    if (int a = 5; a < 8) {
        std::cout << "Local variable a is < 8 \n";
    } else {
        std::cout << "Local variable a is >= 8 \n";
    }
    return 0;
}
