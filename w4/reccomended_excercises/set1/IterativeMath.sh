#! /bin/bash

#if test $# -eq 0
#then
#	echo "USAGE: $0 <Array of n numbers>"
#	exit 1
#fi
#
#read -p "Insert a prime number" p
#
#sum=0
#
#for i in $*
#do
#	let ok=i%p
#	if [ $ok -eq 0 ]
#	then
#		let sum+=i**3
#	fi
#done
#
#echo $sum

declare -a v

function isPrime()
{
	p=$1
	for i in `seq 1 $p`
	do
		let ok=p%i
		if test $ok -eq 0
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

if [ $# -eq 0 ]
then
	read -p "Insert a Prime number " p
	ok=$(isPrime $p)
	if test  $ok -eq 0
	then
		echo "ERROR! Not a prime number! Quitting..."
		exit 1
	fi
	read -p "Insert the length of the array" n
	for i in `seq 1 $n`
	do
		read -p "Give v[$i]" v[$i]
	done
else
	p=$1
	ok=$(isPrime $p)
	if test $ok -eq 0
	then
		echo "ERROR! Not a prime number! Quitting..."
		exit 1
	fi
	n=$2
	for i in $(seq 1 $n)
	do
		v[$i]=$3
		shift
	done
fi

sum=0

for i in $(seq 1 $n)
do
	let ok=v[$i]%p
	if test $ok -eq 0
	then
		let sum+=v[$i]**3
	fi
done

echo $sum

