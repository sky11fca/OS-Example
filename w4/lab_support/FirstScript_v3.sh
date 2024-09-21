#! /bin/bash

i=0
while test ! $# -eq 0
do
	let i+=1
	echo "param_$i = $1"
	shift
done
