#!/bin/bash
# Define control m environment variable.
  
CTM_SERVER="your_ctm_server"
CTM_USER="your_user"
CTM_PASS="your_password"

# check for running and failed jobs 
ctm run job:status -s $CTM_SERVER -u $CTM_USER -p $CTM_PASS > /tmp/ctm_job_status.txt

# check for failed jobs
FAILED_JOBS=$(grep "Failed" /tmp/ctm_job_status.txt)

if [[  !  -z  "FAILED_JOBS"  ]]; then	
	echo "Control-m job failure alert!" | mail -s "Failed jobs detected" support@mail.com
fi

