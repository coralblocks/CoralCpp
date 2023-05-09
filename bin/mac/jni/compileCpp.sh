#!/bin/bash

mkdir -p lib/jni

clang++ -shared -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin/" src/main/c/com_coralblocks_javatocppandback_jni_HelloWorld.cpp -o lib/jni/libHelloWorld.dylib

