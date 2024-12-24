#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}  

java -Djava.library.path=lib/jni -cp classes com.coralblocks.coralcpp.jni_bind.HelloWorld $COUNT $MSG


