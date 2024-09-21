#! /bin/bash

if test $# -ne 2
then
	read -p "Insert 2 numbers: " n k
else
	n=$1
	k=$2
fi

num=1
denom=1

for i in $(seq 1 $n)
do
	let num*=i
done

for i in $(seq 1 $(($n-$k)))
do
	let denom*=i
done

let a=num/denom
echo $a
