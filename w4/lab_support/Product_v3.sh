#! /bin/bash

if [ $# -lt 1 ]
then
	echo -n "Insert a number: "
	read n
else
	n=$1
fi

if [ $# -lt 2 ]
then
	read -p "Insert another number: " m
else
	m=$2
fi

prod=0
k=$m
while [ $k -gt 0 ]
do
	let prod+=n
	let k--
done

echo "$m*$n=$prod"
