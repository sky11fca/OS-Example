#! /bin/bash

for entry in $(find $HOME/Documents/ -type f -name "*.sh")
do
	chmod +x $entry
done
