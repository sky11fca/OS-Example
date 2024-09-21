#! /bin/bash

if test $# -ne 2
then
	read -p "insert 2 numbers: " k d
else
	k=$1
	d=$2
fi

sum=0

for i in $(seq 0 $k)
do
	let ok=i%d
	if test $ok -eq 0
	then
		let sum+=i**2
	fi
done

echo $sum
