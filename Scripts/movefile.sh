#!/bin/bash

for file in $(ls -I "*.sh")
    do
	echo "Now moving file: $file"
	mv $file ../Data
    done
