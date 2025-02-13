#!/bin/bash

# Set threshold for CPU usage (in percentage)
THRESHOLD=80

# Get the average CPU usage (idle % subtracted from 100)
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

# Email details
TO_EMAIL="admin@example.com"
SUBJECT="High CPU Usage Alert on $(hostname)"
MESSAGE="Warning! CPU Usage is at ${CPU_USAGE}% on $(hostname). Please check the server."

# Check if CPU usage exceeds threshold
if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
    echo -e "$MESSAGE" | mail -s "$SUBJECT" $TO_EMAIL
    echo "Alert sent: CPU Usage is at ${CPU_USAGE}%"
else
    echo "CPU usage is normal: ${CPU_USAGE}%"
fi
How It Works
top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' extracts CPU utilization.
Threshold (80%) is checked using bc -l for floating-point comparison.
mail -s sends an email alert if the threshold is exceeded.
Automate via Cron Job
To run this script every 5 minutes, add it to your crontab:

bash
Copy
Edit
crontab -e
Add the following line at the end:

bash
Copy
Edit
*/5 * * * * /path/to/cpu_alert.sh
Prerequisites
Ensure mailutils is installed for email sending:
bash
Copy
Edit
sudo apt install mailutils   # (For Debian/Ubuntu)
sudo yum install mailx       # (For RHEL/CentOS)
Ensure SMTP is configured (e.g., for Gmail, use msmtp or Postfix).
Testing the Script
To test, temporarily lower the threshold to 10%:

bash
Copy
Edit
THRESHOLD=10
Run the script manually:

bash
Copy
Edit
bash cpu_alert.sh
