#!/bin/bash

./bin/mac/jni/all.sh "$1" "$2"
./bin/mac/jna/all.sh "$1" "$2"
./bin/mac/jnr/all.sh "$1" "$2"
./bin/mac/ffm/all.sh "$1" "$2"
./bin/mac/ffm_jextract/all.sh "$1" "$2"
./bin/mac/bridj/all.sh "$1" "$2"
./bin/mac/graal/all.sh "$1" "$2"
./bin/mac/jni_jvm/all.sh "$1" "$2"
./bin/mac/jni_callback/all.sh "$1"
./bin/mac/jni_bind/all.sh "$1" "$2"
./bin/mac/clean.sh
