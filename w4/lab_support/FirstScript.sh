#! /bin/bash

### Write a bash script that while running with specified parameters to display all of them in format: param_n=param(n)

i=0
for param in $@;
do
	let i=i+1
	echo "param_$i = $param"
done

