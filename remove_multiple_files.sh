#!/bin/bash

for file in *.txt;
do
	mv "$file" "$(date +%Y%m%d)_$file";
done
