// if block with the init statment, to check the compiler supporting C++17
// g++ -std=c++1z if_test.cpp

#include <iostream>

int main() {
    if (int a = 5; a < 8) {
        std::cout << "Local variable a is < 8 \n";
    } else {
        std::cout << "Local variable a is >= 8 \n";
    }
    return 0;
}
