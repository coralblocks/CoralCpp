#!/bin/bash

mkdir -p lib/bridj

clang++ -shared -fPIC src/main/c/com_coralblocks_javatocppandback_bridj_HelloWorld.cpp -o lib/bridj/libHelloWorld.dylib

