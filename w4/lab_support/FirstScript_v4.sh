#! /bin/bash

i=0
while test $i -lt $#
do
	let i+=1
	eval p_i=\$$i
	echo "param_$i = $p_i"
done
