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
package com.coralblocks.coralcpp.ffm;

import java.lang.foreign.Arena;
import java.lang.foreign.FunctionDescriptor;
import java.lang.foreign.Linker;
import java.lang.foreign.SymbolLookup;
import java.lang.foreign.ValueLayout;
import java.lang.foreign.MemorySegment;
import java.lang.invoke.MethodHandle;
import java.nio.charset.StandardCharsets;

public class HelloWorld {

    static MemorySegment allocateUtf8String(Arena arena, String text) {
       byte[] bytes = text.getBytes(StandardCharsets.UTF_8);
       MemorySegment cStr = arena.allocate(ValueLayout.JAVA_BYTE, bytes.length + 1);
       cStr.copyFrom(MemorySegment.ofArray(bytes));
       cStr.set(ValueLayout.JAVA_BYTE, bytes.length, (byte) 0);  // null terminator
       return cStr;
    }

    public static void main(String[] args) throws Throwable {

        int count = Integer.parseInt(args[0]);
        String msg = args[1];

        Arena arena = Arena.ofConfined();
        Linker linker = Linker.nativeLinker();

        System.loadLibrary("HelloWorld");
        SymbolLookup lookup = SymbolLookup.loaderLookup();

        MemorySegment sayHello = lookup.find("sayHello").get();
        FunctionDescriptor sayHello_sig = FunctionDescriptor.ofVoid(ValueLayout.JAVA_INT, ValueLayout.ADDRESS);
        MethodHandle sayHello_method = linker.downcallHandle(sayHello, sayHello_sig);

        sayHello_method.invokeExact(count, allocateUtf8String(arena, msg));
        
    }
}
