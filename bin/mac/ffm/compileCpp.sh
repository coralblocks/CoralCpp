#!/bin/bash

mkdir -p lib/ffm

clang++ -shared -fPIC src/main/c/com_coralblocks_coralcpp_ffm_HelloWorld.cpp -o lib/ffm/libHelloWorld.dylib

