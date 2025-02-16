#!/bin/bash
service_name="myservice"
if ! systemctl is-active --quite $service_name;
then
	systemctl restart $service_name
	echo "$service_name was down and has been restarted."
else 
	echo "$service_name is running fine."
fi


