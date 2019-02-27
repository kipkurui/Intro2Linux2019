#!/bin/bash

n=1 #initialize n
y=5
while [ $n -le $y ] # condition test
    do
	echo "Welcome $n times" #executed block
	#n=$((n+1))
	((n+=1))
   done

