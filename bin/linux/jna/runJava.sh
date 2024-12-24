#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}  

java -cp lib/jna:jars/jna-5.16.0.jar:classes com.coralblocks.javatocppandback.jna.HelloWorld $COUNT $MSG


