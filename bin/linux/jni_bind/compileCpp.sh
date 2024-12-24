#!/bin/bash

mkdir -p lib/jni

# IMPORTANT: libc++-dev and libc++abi-dev must be installed
# For Ubuntu you can just run: sudo apt-get install libc++-dev libc++abi-dev

clang++ -stdlib=libstdc++ -std=c++17 -shared -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux/" src/main/c/com_coralblocks_coralcpp_jni_bind_HelloWorld.cpp -o lib/jni/libHelloWorld.so

