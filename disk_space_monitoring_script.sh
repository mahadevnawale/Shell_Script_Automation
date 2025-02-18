#!/bin/bash

THRESHOLD=90
EMAIL="example@mail.com"

dh -h | awk '{print $5 " " $1}' | while read OUTPUT
do
	USAGE=$(echo "$OUTPUT" | awk '{print $1}' | sed "s/%//g")
	PARTITION=$(echo "$OUTPUT" | awk '{print $2}')

if [ $USAGE -gt $TRESHOLD ]; then
	echo "Disk space alert: $PARTITION is at $USAGE% usage." | mail -s "Disk space alert" $EMAIL
fi 
done

