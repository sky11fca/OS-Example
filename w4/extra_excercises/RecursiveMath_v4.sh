#! /bin/bash

if test $# -ne 1
then
	read -p "Insert number: " n
else
	n=$1
fi

nr=0

function recurse()
{
	if test $n -eq 0
	then
		echo $nr
		exit 0
	else
		let cif=n%10
		let cimp=9-cif
		let nr=nr*10+cimp
		let n/=10
		recurse $n
	fi
}

recurse $n
