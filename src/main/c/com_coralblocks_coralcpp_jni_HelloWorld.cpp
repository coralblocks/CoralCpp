/* 
 * Copyright 2015-2024 (c) CoralBlocks LLC - http://www.coralblocks.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language
 * governing permissions and limitations under the License.
 */
#include <iostream>
#include <jni.h>
#include "com_coralblocks_coralcpp_jni_HelloWorld.h"

JNIEXPORT void JNICALL Java_com_coralblocks_coralcpp_jni_HelloWorld_sayHello
  (JNIEnv * env, jobject obj, jint count, jstring msg) {
    const char* cmsg = env->GetStringUTFChars(msg, nullptr);
    for(int i = 0; i < count; i++) {
        std::cout << "Hello CoralBlocks from JNI! => " << cmsg << std::endl;
    }
    env->ReleaseStringUTFChars(msg, cmsg);
}