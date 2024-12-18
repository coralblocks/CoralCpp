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
#include "jni_bind_release.h"
#include "com_coralblocks_javatocppandback_jni_bind_HelloWorld.h"

// required for JNI-BIND:
std::unique_ptr < jni::JvmRef < jni::kDefaultJvm >> jvm;

// required for JNI-BIND:
extern "C" {
    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM * pjvm, void * ) {
        jvm.reset(new jni::JvmRef < jni::kDefaultJvm > (pjvm));
        return JNI_VERSION_1_6;
    }
}

// required for JNI-BIND:
JNIEXPORT void JNICALL Java_com_coralblocks_javatocppandback_jni_1bind_HelloWorld_tearDownJvm
  (JNIEnv *, jclass) {
	jvm = nullptr; // release before exiting the JVM on the Java side...
}

JNIEXPORT void JNICALL Java_com_coralblocks_javatocppandback_jni_1bind_HelloWorld_goToNativeSide
  (JNIEnv *env, jclass klass, jint x, jstring msg) {

    // using pure JNI:
    /*
    jclass helloWorldClass = env->FindClass("com/coralblocks/javatocppandback/jni_bind/HelloWorld");
    jmethodID helloWorldConstructor = env->GetMethodID(helloWorldClass, "<init>", "()V");
    jobject helloWorldObj = env->NewObject(helloWorldClass, helloWorldConstructor);
    jmethodID sayHelloMethod = env->GetMethodID(helloWorldClass, "sayHello", "(ILjava/lang/String;)V");
    env->CallVoidMethod(helloWorldObj, sayHelloMethod, x, msg);
    */

   // using JNI-BIND: Note that this can be defined globally only once...
   static constexpr jni::Class kClass {
      "com/coralblocks/javatocppandback/jni_bind/HelloWorld",
      jni::Method {
          "sayHello",
          jni::Return < void > {},
          jni::Params < jint , jstring> {}
      }
    };

    jni::LocalObject < kClass > helloWorld {}; // Constructs new instance.
    helloWorld("sayHello", x, msg);

    // no need to release the JNI-Bind instance...
}


