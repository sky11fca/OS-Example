#! /bin/bash

i=0
while test $i -lt $#
do
	let i+=1
	echo param_$i=${!i}
done
