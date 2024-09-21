#! /bin/bash

if test $# -lt 1
then
	read -p "Insert a number: " n
else
	n=$1
fi

if [ $# -lt 2 ]
then
	read -p "Insert another number: " m
else
	m=$2
fi

declare -i prod
declare -i k

prod=0
k=0

while [ $k -lt $m ]
do
	prod=prod+n
	k=k+1
done

echo "$n*$m=$prod"
