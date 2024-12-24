#!/bin/bash

mkdir -p lib/jni

clang++ -stdlib=libc++ -std=c++17 -shared -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin/" src/main/c/com_coralblocks_javatocppandback_jni_bind_HelloWorld.cpp -o lib/jni/libHelloWorld.dylib

