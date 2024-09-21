#! /bin/bash

i=0
for param in $*
do
	let i++
	echo "param_$i=$param"
done
