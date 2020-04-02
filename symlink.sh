#!/bin/bash

# Script for creating symlinks for everything

path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
for entry in $(ls -a $path | grep -Ev '(\.|\.sh|\.git)$')
do
	test -h ~/$entry	
	if [ $? -eq 0 ]
	then
		rm ~/$entry
		ln -s $path/$entry ~/$entry
	else
		ln -s $path/$entry ~/$entry
	fi
done


