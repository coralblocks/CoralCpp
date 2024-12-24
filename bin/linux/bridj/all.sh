#!/bin/bash

./bin/linux/bridj/clean.sh
./bin/linux/bridj/compileJava.sh
./bin/linux/bridj/compileCpp.sh
./bin/linux/bridj/runJava.sh "$1" "$2"
./bin/linux/bridj/clean.sh

