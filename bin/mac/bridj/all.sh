#!/bin/bash

./bin/mac/bridj/clean.sh
./bin/mac/bridj/compileJava.sh
./bin/mac/bridj/compileCpp.sh
./bin/mac/bridj/runJava.sh "$1" "$2"
./bin/mac/bridj/clean.sh
