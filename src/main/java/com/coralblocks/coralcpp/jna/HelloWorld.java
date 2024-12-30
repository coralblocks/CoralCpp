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
package com.coralblocks.coralcpp.jna;

import com.sun.jna.Library;
import com.sun.jna.Native;

public class HelloWorld {

    public interface HelloWorldLib extends Library {
        HelloWorldLib INSTANCE = Native.load("HelloWorld", HelloWorldLib.class);
        void sayHello(int count, String msg);
    }
    
    public static void main(String[] args) {
        int count = Integer.parseInt(args[0]);
        String msg = args[1];
        HelloWorldLib lib = HelloWorldLib.INSTANCE;
        lib.sayHello(count, msg);
    }
}