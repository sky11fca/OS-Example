#! /bin/bash

if test $# -ne 1
then
	read -p "insert number: " m
else
	m=$1
fi

x0=1
x1=2

function recurse()
{
	i=$1
	if test $i -gt $m
	then
		echo $x1
		exit 0
	else
		let x2=x1+4*x0+i
		let x0=x1
		let x1=x2
		let i++
		recurse $i
	fi

}

recurse 3
