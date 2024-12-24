#!/bin/bash

mkdir -p lib/ffm_jextract

clang++ -shared -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux src/main/c/com_coralblocks_coralcpp_ffm_jextract_HelloWorld.cpp -o lib/ffm_jextract/libHelloWorld.so

