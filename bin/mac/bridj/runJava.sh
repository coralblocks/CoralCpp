#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}

java -Djava.library.path=lib/bridj -cp jars/bridj-0.8.0-SNAPSHOT.jar:classes com.coralblocks.javatocppandback.bridj.HelloWorld $COUNT $MSG

