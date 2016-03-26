#!/bin/bash

git clone https://github.com/google/googletest.git
git checkout release-1.7.0
mkdir build
cd build
cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo cp -a ../include/gtest /usr/include
sudo cp -a libgtest_main.so libgtest.so /usr/lib
sudo ldconfig
