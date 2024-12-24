#!/bin/bash

mkdir -p lib/jnr

clang++ -shared -fPIC src/main/c/com_coralblocks_coralcpp_jnr_HelloWorld.cpp -o lib/jnr/libHelloWorld.dylib

