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
package com.coralblocks.coralcpp.jni_callback;

public class CallbackFromJava {

    static {
        System.loadLibrary("CallbackFromJavaSharedLib");
    }

    private final int count;
    private final Thread thread;
    private volatile boolean isRunning = true;

    public CallbackFromJava(int count) {
        this.count = count;
        this.thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    int count = 0;
                    while(isRunning) {
                        Thread.sleep(100);
                        hiFromJava(System.currentTimeMillis());
                        if (++count == CallbackFromJava.this.count) break;
                    }
                } catch(InterruptedException e) {
                    // wants to exit...
                }
            }
        });
    }

    public void start() {
        thread.start();
    }

    public void stopMe() {
        isRunning = false;
    }

    public native void hiFromJava(long l);
}
