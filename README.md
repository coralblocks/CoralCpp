# CoralCpp
Call Java from C++ and C++ from Java with a variety of old and new projects like JNI, JNA, JNR, FFM, JExtract, BridJ, GraalVM, JNI-Bind, etc.

This project is intended to be used as a quick reference on how to get going with Java and C++ integration, from both sides. It is a _step-by-step_ guide, in the form of shell scripts (for Linux and MacOS) to compile and run the C++ and Java examples, so you don't have to guess anything. Just see "_Hello World!_" popping up in your terminal to celebrate! :champagne: :tada: :confetti_ball:

<pre>
Feel free to use our official <a href="https://hub.docker.com/r/coralblocks/coralcpp">Docker image</a> for Linux/amd64 available on DockerHub
</pre>

#### MacOS
```
$ uname -a; sw_vers | grep ProductVersion; arch
Darwin MacBook-Air.local 22.6.0 Darwin Kernel Version 22.6.0: Wed Jul  5 22:17:35 PDT 2023; root:xnu-8796.141.3~6/RELEASE_ARM64_T8112 arm64
ProductVersion:		13.5.2
arm64

$ java -version
java version "23.0.1" 2024-10-15
Java(TM) SE Runtime Environment Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11-jvmci-b01)
Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11-jvmci-b01, mixed mode, sharing)

$ clang++ --version
Homebrew clang version 18.1.8
Target: arm64-apple-darwin22.6.0
Thread model: posix
InstalledDir: /opt/homebrew/opt/llvm@18/bin

$ native-image --version
native-image 23.0.1 2024-10-15
GraalVM Runtime Environment Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11-jvmci-b01)
Substrate VM Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11, serial gc, compressed references)

$ jextract --version
jextract 22
JDK version 22+35-2369
LibClang version clang version 13.0.0
```
#### Linux
```
$ (uname -a; cat /etc/issue; arch) | grep -v '^$'
Linux 2d4c02259081 4.15.0-188-generic #199-Ubuntu SMP Wed Jun 15 20:42:56 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
Ubuntu 22.04.5 LTS \n \l
x86_64

$ java -version
java version "23.0.1" 2024-10-15
Java(TM) SE Runtime Environment Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11-jvmci-b01)
Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11-jvmci-b01, mixed mode, sharing)

$ clang++ --version
Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin

$ native-image --version
native-image 23.0.1 2024-10-15
GraalVM Runtime Environment Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11-jvmci-b01)
Substrate VM Oracle GraalVM 23.0.1+11.1 (build 23.0.1+11, serial gc, compressed references)

$ jextract --version
jextract 22
JDK version 22+35-2369
LibClang version clang version 13.0.0
```

## Java calling C++

### [JNI](https://docs.oracle.com/javase/8/docs/technotes/guides/jni/spec/jniTOC.html)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/jni/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jni_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/jni/all.sh 2 Awesome
Hello CoralBlocks from JNI! => Awesome
Hello CoralBlocks from JNI! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/jni/all.sh 2 Awesome
Hello CoralBlocks from JNI! => Awesome
Hello CoralBlocks from JNI! => Awesome
```

### [JNA](https://github.com/java-native-access/jna)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/jna/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jna_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jna/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jna/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jna/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/jna/all.sh 2 Awesome
Hello CoralBlocks from JNA! => Awesome
Hello CoralBlocks from JNA! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jna/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jna/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jna/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/jna/all.sh 2 Awesome
Hello CoralBlocks from JNA! => Awesome
Hello CoralBlocks from JNA! => Awesome
```

### [JNR](https://github.com/jnr/jnr-ffi)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/jnr/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jnr_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jnr/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jnr/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jnr/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/jnr/all.sh 2 Awesome
Hello CoralBlocks from JNR! => Awesome
Hello CoralBlocks from JNR! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jnr/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jnr/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jnr/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/jnr/all.sh 2 Awesome
Hello CoralBlocks from JNR! => Awesome
Hello CoralBlocks from JNR! => Awesome
```

### [FFM](https://docs.oracle.com/en/java/javase/21/core/foreign-function-and-memory-api.html)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/ffm/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_ffm_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/ffm/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/ffm/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/ffm/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/ffm/all.sh 2 Awesome
Hello CoralBlocks from FFM! => Awesome
Hello CoralBlocks from FFM! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/ffm/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/ffm/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/ffm/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/ffm/all.sh 2 Awesome
Hello CoralBlocks from FFM! => Awesome
Hello CoralBlocks from FFM! => Awesome
```

### [JExtract](https://github.com/openjdk/jextract)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/ffm_jextract/HelloWorld.java)
- Check the [C++ header](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_ffm_jextract_HelloWorld.h)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_ffm_jextract_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/ffm_jextract/compileCpp.sh) the C++ code
- [Generate](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/ffm_jextract/generateJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/ffm_jextract/compileJava.sh) the Java code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/ffm_jextract/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/ffm_jextract/all.sh 2 Awesome
Hello CoralBlocks from JExtract! => Awesome
Hello CoralBlocks from JExtract! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/ffm_jextract/compileCpp.sh) the C++ code
- [Generate](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/ffm_jextract/generateJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/ffm_jextract/compileJava.sh) the Java code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/ffm_jextract/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/ffm_jextract/all.sh 2 Awesome
Hello CoralBlocks from JExtract! => Awesome
Hello CoralBlocks from JExtract! => Awesome
```

### [BridJ](https://github.com/nativelibs4java/BridJ)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/bridj/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_bridj_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/bridj/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/bridj/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/bridj/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/bridj/all.sh 2 Awesome
Hello CoralBlocks from BridJ! => Awesome
Hello CoralBlocks from BridJ! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/bridj/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/bridj/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/bridj/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/bridj/all.sh 2 Awesome
Hello CoralBlocks from BridJ! => Awesome
Hello CoralBlocks from BridJ! => Awesome
```

## C++ calling Java

### [JNI](https://docs.oracle.com/javase/8/docs/technotes/guides/jni/spec/invocation.html)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/jni_jvm/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jni_jvm_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_jvm/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_jvm/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_jvm/runCpp.sh) the C++ code
```
# For Mac
$ ./bin/mac/jni_jvm/all.sh 2 Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_jvm/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_jvm/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_jvm/runCpp.sh) the C++ code
```
# For Linux
$ ./bin/linux/jni_jvm/all.sh 2 Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
```

### [GraalVM](https://www.graalvm.org)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/graal/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_graal_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/graal/compileJava.sh) the Java code
- [Generate](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/graal/nativeImage.sh) the native image
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/graal/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/graal/runCpp.sh) the C++ code
```
# For Mac
$ ./bin/mac/graal/all.sh 2 Awesome
Hello CoralBlocks from GraalVM Native-Image! => Awesome
Hello CoralBlocks from GraalVM Native-Image! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/graal/compileJava.sh) the Java code
- [Generate](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/graal/nativeImage.sh) the native image
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/graal/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/graal/runCpp.sh) the C++ code
```
# For Linux
$ ./bin/linux/graal/all.sh 2 Awesome
Hello CoralBlocks from GraalVM Native-Image! => Awesome
Hello CoralBlocks from GraalVM Native-Image! => Awesome
```

## C++ calling Java which calls back C++

### [JNI](https://docs.oracle.com/javase/8/docs/technotes/guides/jni/spec/invocation.html)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/jni_callback/CallbackFromJava.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jni_callback_CallbackFromJava.cpp) that calls Java
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jni_callback_CallbackFromJavaSharedLib.cpp) that receives the callbacks from Java
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jni_callback_CallbackFromJavaSharedLib.h) header file for the C++ code above
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_callback/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_callback/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_callback/runCpp.sh) the C++ code
```
# For Mac
$ ./bin/mac/jni_callback/all.sh 2
Received callback from Java: 1683119040946
Received callback from Java: 1683119040947
Join returned, exiting C++ code...
```
###### Linux
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_callback/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_callback/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_callback/runCpp.sh) the C++ code
```
# For Linux
$ ./bin/linux/jni_callback/all.sh 2
Received callback from Java: 1683119062956
Received callback from Java: 1683119062957
Join returned, exiting C++ code...
```

## Java calling C++ which calls Java

### [JNI-BIND](https://github.com/google/jni-bind)
- Check the [Java code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/java/com/coralblocks/coralcpp/jni_bind/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/CoralCpp/blob/main/src/main/c/com_coralblocks_coralcpp_jni_bind_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_bind/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_bind/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/mac/jni_bind/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/jni_bind/all.sh 2 Awesome
Hello CoralBlocks from JNI-Bind! => Awesome
Hello CoralBlocks from JNI-Bind! => Awesome
```
###### Linux
**NOTE:** For Linux make sure you have **libc++-dev** and **libc++abi-dev** installed.

&nbsp;&nbsp;&nbsp;&nbsp;`sudo apt-get install libc++-dev libc++abi-dev`

- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_bind/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_bind/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/CoralCpp/blob/main/bin/linux/jni_bind/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/jni_bind/all.sh 2 Awesome
Hello CoralBlocks from JNI-Bind! => Awesome
Hello CoralBlocks from JNI-Bind! => Awesome
```

##### Pure JNI x JNI-Bind

###### Pure JNI:
```c++
jclass helloWorldClass = env->FindClass("com/coralblocks/coralcpp/jni_bind/HelloWorld");
jmethodID helloWorldConstructor = env->GetMethodID(helloWorldClass, "<init>", "()V");
jobject helloWorldObj = env->NewObject(helloWorldClass, helloWorldConstructor);
jmethodID sayHelloMethod = env->GetMethodID(helloWorldClass, "sayHello", "(ILjava/lang/String;)V");
env->CallVoidMethod(helloWorldObj, sayHelloMethod, x, msg);
```

###### JNI-Bind:
```c++
static constexpr jni::Class kClass {
    "com/coralblocks/coralcpp/jni_bind/HelloWorld",
    jni::Method {
        "sayHello",
        jni::Return < void > {},
        jni::Params < jint , jstring> {}
    }
};

jni::LocalObject < kClass > helloWorld {}; // Constructs new instance.
helloWorld("sayHello", x, msg);
```
