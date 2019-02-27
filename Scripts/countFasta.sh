#!/bin/bash

echo "Let's try some conditional tests"
echo "This is the first argument $1"
echo "This is the name of the script: $0"
echo "This is the second argument: $2"

fa=$1 #fasta file commandline input (argument)
format=$2 #extension of the fasta file


y=5
x=$(ls ../Data/*.$format | wc -l)

#echo "We have `ls ../Data/*.fa | wc -l` Fasta files"

#echo "We have $x Fasta files"
function mainFunction {
echo "This is a call to the main function by $1 and $2"
if [ $x -gt $y ]
    then
        echo "We have Many fasta files in the Data directory"
elif [ $x -eq 3 ]
    then
	forloop
else
    echo "We have a few fasta files and these are the name: `ls ../Data/*.$fa`"
fi
}

function forloop {
	for fasta in $(ls ../Data/*.$format | cut -f3 -d"/")
	    do
		echo "These are the contents of $fasta"
		head ../Data/$fasta
	    done
}

function getFastaHead {
		echo "These are the contents of $fa"
		head $fa
}

getFastaHead

#forloop

#mainFunction Myself Others



