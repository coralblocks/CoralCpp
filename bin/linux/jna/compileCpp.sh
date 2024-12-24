#!/bin/bash

mkdir -p lib/jna

clang++ -shared -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux src/main/c/com_coralblocks_coralcpp_jna_HelloWorld.cpp -o lib/jna/libHelloWorld.so

