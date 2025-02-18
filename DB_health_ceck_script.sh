#!/bin/bash
DB_USER="your_user"
DB_PASS="your_password"
DB_HOST="your_database_host"

mysqladmin -u $DB_USER -p $DB_PASS -h $DB_HOST ping > /dev/null 2>&1

if [ $? -ne 0 ]; then
	echo "database is down" | mail -s "Database health check alert" support_team@email.com
else 
	echo "Database is up"
fi


