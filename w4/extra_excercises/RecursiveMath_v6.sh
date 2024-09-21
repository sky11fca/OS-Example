#! /bin/bash

if test $# -ne 1
then
	read -p "Insert Number: " n
else
	n=$1
fi

y0=1
y1=1

function recurse()
{
	i=$1
	if test $i -eq $n
	then
		echo $y1
		exit 0
	else
		y2=$(echo "($i+1)*$y1+($i+2)*$y0" | bc)
		let y0=y1
		let y1=y2
		let i++
		recurse $i
	fi
}

recurse 2
