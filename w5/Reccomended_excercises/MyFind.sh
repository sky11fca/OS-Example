#! /bin/bash

if test $# -lt 1
then
	read -p "Insert a valith path: " p
else
	p=$1
fi

nr_dir=0
nr_f=0
let cur_date=$(date +"%s")
let last_30_days=cur_date-2592000

function MyFind()
{
	path=$1
	subdir_cnt=$2

	for entry in $path/*
	do
		if test -d "$entry"
		then
			let nr_dir++
			MyFind $entry
		elif test -f "$entry";
		then
			let date=$(stat -c "%X" "$entry")
			if test $date -gt $last_30_days
			then
				let nr_f++
				echo $entry
			fi
		fi
	done
}

MyFind $p

echo "Script ended with $nr_f files and $nr_dir subdirectories"
