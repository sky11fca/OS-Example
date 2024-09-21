#! /bin/bash

if test $# -lt 1
then
	read -p "Insert a number: " n
else
	n=$1
fi

if test $# -lt 2
then
	read -p "Insert another number: " m
else
	m=$2
fi

prod=0
k=$m
while test $k -gt 0
do
	let prod=prod+n
	let k=k-1
done

echo "$n*$m=$prod"
