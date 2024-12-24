#!/bin/bash

mkdir -p lib/jni

clang++ -shared -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux src/main/c/com_coralblocks_coralcpp_jni_HelloWorld.cpp -o lib/jni/libHelloWorld.so

