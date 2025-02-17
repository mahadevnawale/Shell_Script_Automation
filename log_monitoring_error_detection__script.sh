#!/bin/bash

LOG_FILE="/var/log/app/application.log"
ERROR_PATTEN="ERROR|FAILURE"
ALERET_EMAIL="support_team@example.com"

tail -Fn0 $LOG_FILE | while read LINE
do
	echo "$line" | grep -E "ERROR_PATTERN" 
	if [[ $? = 0 ]]; then
		echo "ALERT: error found in logs-$LINE" | mail -s "log error alert" $ALERT_EMAIL
	fi
done

