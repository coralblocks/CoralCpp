#!/bin/bash

mkdir -p lib/jni

clang++ -shared -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin/" src/main/c/com_coralblocks_coralcpp_jni_callback_CallbackFromJavaSharedLib.cpp -o lib/jni/libCallbackFromJavaSharedLib.dylib

clang++ -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin" -o CallbackFromJava src/main/c/com_coralblocks_coralcpp_jni_callback_CallbackFromJava.cpp -Llib/jni -lCallbackFromJavaSharedLib -L"$JAVA_HOME/lib/server" -ljvm -Wno-write-strings

