#!/bin/bash

mkdir -p lib/jni

clang++ -shared -fPIC -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux/" src/main/c/com_coralblocks_coralcpp_jni_callback_CallbackFromJavaSharedLib.cpp -o lib/jni/libCallbackFromJavaSharedLib.so

clang++ -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux" -o CallbackFromJava src/main/c/com_coralblocks_coralcpp_jni_callback_CallbackFromJava.cpp -Llib/jni -lCallbackFromJavaSharedLib -L"$JAVA_HOME/lib/server" -ljvm -Wno-write-strings

