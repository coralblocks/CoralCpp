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
package com.coralblocks.coralcpp.jni_bind;

public class HelloWorld {

    static {
        System.loadLibrary("HelloWorld");
    }

    public void sayHello(int count, String msg) {
        for(int i = 0; i < count; i++) {
            System.out.println("Hello CoralBlocks from JNI-Bind! => " + msg);
        }
    }

    private static native void goToNativeSide(int count, String msg);

    private static native void tearDownJvm();

    public static void main(String[] args) throws Exception {
        int count = Integer.parseInt(args[0]);
        String msg = args[1];
        goToNativeSide(count, msg);
        tearDownJvm(); // for JNI-Bind, this is necessary to avoid an exception when the JVM exits...
    }
}