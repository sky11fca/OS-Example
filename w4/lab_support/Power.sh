#! /bin/bash

if [ $# -lt 1 ]
then
	read -p "Insert base: " n
else
	n=$1
fi

if [ $# -lt 2 ]
then
	read -p "Insert exponent (MUST BE POSITIVE INTEGER): " m
else
	m=$2
fi

pow=1
for i in $(seq 1 $m)
do
	let pow=pow*n
done

echo "$n^$m=$pow"


