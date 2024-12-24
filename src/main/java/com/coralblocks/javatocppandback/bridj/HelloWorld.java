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
package com.coralblocks.javatocppandback.bridj;

import org.bridj.BridJ;
import org.bridj.ann.Library;
import org.bridj.ann.Convention;
import org.bridj.ann.Convention.Style;
import org.bridj.Pointer;

@Library("HelloWorld")
@Convention(Style.CDecl)
public class HelloWorld {

    static {
        BridJ.register();
    }

    private static native void sayHello(int count, Pointer<Byte> msg);

    public static void main(String[] args) {
        int count = Integer.parseInt(args[0]);
        String msg = args[1];
        HelloWorld.sayHello(count, Pointer.pointerToCString(msg));
    }
    
}