#! /bin/bash

if test $# -ne 1
then
	read -p "Insert a number: " n
else
	n=$1
fi

fact=1

for i in $(seq 1 $n)
do
	let fact*=i
done

echo $fact
