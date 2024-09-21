#! /bin/bash

function compile()
{
	out=${1%.c}
	gcc $1 -o $out -Wall
}

function output()
{
	echo "Contents $1"
	cat $1
}

if [ $# -eq 0 ]
then
	echo "USAGE: $0 dir"
	exit 1
fi

if [ ! -d $1 -o ! -r $1 ]
then
	echo "ERROR: $1 Not a file or don't have the right to read!!"
	exit 2
fi

for f in $(ls -A $1)
do
	case $f in
		*.c ) echo "Source file C: $1/$f"; compile $1/$f ;;
		*.txt ) echo "Text file: $1/$f"; output $1/$f ;;
	esac
done

exit 0

