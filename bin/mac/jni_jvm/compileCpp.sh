#!/bin/bash

clang++ -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin" -o HelloWorld src/main/c/com_coralblocks_coralcpp_jni_jvm_HelloWorld.cpp -L"$JAVA_HOME/lib/server" -ljvm -Wno-write-strings

