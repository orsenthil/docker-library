## Clang docker

A Clang + libc++ environment for trying out C++17 features.

### Reference

* https://solarianprogrammer.com/2017/12/14/clang-in-docker-container-cpp-17-development/

### Run

    docker build -t clang-docker .
    docker run -it clang-docker

### Try the tests inside the container

    clang++ -std=c++17 -stdlib=libc++ -Wall -pedantic if_test.cpp -o if_test && ./if_test
    clang++ -std=c++17 -stdlib=libc++ -Wall -pedantic test_optional.cpp -o test_optional && ./test_optional
    clang++ -std=c++17 -stdlib=libc++ -Wall -pedantic test_fs.cpp -o test_fs && ./test_fs
