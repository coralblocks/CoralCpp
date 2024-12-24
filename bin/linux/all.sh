#!/bin/bash

./bin/linux/jni/all.sh "$1" "$2"
./bin/linux/jna/all.sh "$1" "$2"
./bin/linux/jnr/all.sh "$1" "$2"
./bin/linux/ffm/all.sh "$1" "$2"
./bin/linux/ffm_jextract/all.sh "$1" "$2"
./bin/linux/bridj/all.sh "$1" "$2"
./bin/linux/graal/all.sh "$1" "$2"
./bin/linux/jni_jvm/all.sh "$1" "$2"
./bin/linux/jni_callback/all.sh "$1"
./bin/linux/jni_bind/all.sh "$1" "$2"
./bin/linux/clean.sh
