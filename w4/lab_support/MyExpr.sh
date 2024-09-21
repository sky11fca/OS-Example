#! /bin/bash

if [ $# -eq 1 ];
then
	filename=$1
else
	echo -n "Give filename: "; read filename
fi

nr_op=0

echo > $filename
until false
do
	read -p "Give a number: " nr1
	read -p "Give another number: " nr2
	echo -n "Give an operator: ": ;read op

	case "$op" in
		"+" ) let rez=nr1+nr2 ;;
		"-" ) let rez=nr1-nr2 ;;
		"*" ) let rez=nr1*nr2 ;;
		"/" ) rez=$(echo "$nr1 / $nr2" | bc -l) ;;
		"q" ) break
	esac
	let nr_op++
	echo "$nr_op: $nr1 $op $nr2 = $rez" >> $filename
done

echo "Nr of operations done: $nr_op" >> $filename

