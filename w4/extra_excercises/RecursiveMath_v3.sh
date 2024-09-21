#! /bin/bash

if test $# -ne 1
then
	read -p "Insert a number: " n
else
	n=$1
fi

sum=0

function is_prime()
{
	x=$1
	div=0
	for i in $(seq 1 $x)
	do
		let bool=x%i
		if test $bool -eq 0
		then
			let div+=1
		fi
	done

	if test $div -eq 2
	then
		echo 1
	else
		echo 0
	fi
}

function recurse()
{
	n=$1
	if test $n -eq 0
	then
		echo $sum
		exit 0
	else
		let cif=n%10
		if test $(is_prime $cif) -eq 1
		then
			let sum+=cif
			let n/=10
			recurse $n
		else
			let n/=10
			recurse $n
		fi
	fi
}

recurse $n
