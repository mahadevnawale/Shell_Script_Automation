#!/bin/bash

if grep -q "ERROR" /path/etl/log;
then
	echo "ETL job failed" | mail -s "ETL job failed" abc@gmail.com
else 
	echo "ETL job executed successfully."
fi

