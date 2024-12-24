#!/bin/bash

COUNT=${1:-3}
MSG=${2:-Awesome}

java -Djava.library.path=lib/ffm --enable-native-access=ALL-UNNAMED --enable-preview -cp classes com.coralblocks.coralcpp.ffm.HelloWorld $COUNT $MSG

