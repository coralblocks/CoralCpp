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
#include "com_coralblocks_coralcpp_jni_callback_CallbackFromJava.h"
#include "com_coralblocks_coralcpp_jni_callback_CallbackFromJavaSharedLib.h"

static callback_func g_callback = nullptr;

void register_callback(callback_func func) {
    g_callback = func;
}

JNIEXPORT void JNICALL Java_com_coralblocks_coralcpp_jni_1callback_CallbackFromJava_hiFromJava
  (JNIEnv *env, jobject obj, jlong l) {
    if (g_callback) {
        g_callback((long) l); // invoke the callback function
    } else {
        jclass exceptionClass = env->FindClass("java/lang/RuntimeException");
        if (exceptionClass) {
            env->ThrowNew(exceptionClass, "Callback was not set!");
        }
    }
}

