#!/bin/bash

mkdir -p lib/bridj

clang++ -shared -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux src/main/c/com_coralblocks_javatocppandback_bridj_HelloWorld.cpp -o lib/bridj/libHelloWorld.so

