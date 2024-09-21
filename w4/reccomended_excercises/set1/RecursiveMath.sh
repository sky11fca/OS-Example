#! /bin/bash

if test $# -lt 1
then
	read -p "Insert number" n
else
	n=$1
fi

if test $n -eq 2 -o $n -eq 1
then
	echo "Fib($n)=1"
	exit 0
fi

function fibonaci()
{
	a=$1
	b=$2
	n=$3

	if test $n -eq 0
	then 
		echo $b
		exit 0
	fi

	let c=a+b
	let a=b
	let b=c
	let n--
	fibonaci $a $b $n
}

a=1
b=1
echo "Fib($n) ="
let n-=2
fibonaci $a $b $n

