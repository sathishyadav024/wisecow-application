#!/bin/bash

# URL of the application to check (i used the google url)
URL="https://www.google.com"

# The file to record health check results
LOG_FILE="app_health.log"

# Send an HTTP request and capture the status code
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)

# Check the status code and determine if the application is up or down
if [[ $STATUS_CODE -ge 200 && $STATUS_CODE -lt 300 ]]; then
    echo "[$(date +"%Y-%m-%d %H:%M:%S")] Application is up: $STATUS_CODE" | tee -a $LOG_FILE
else
    echo "[$(date +"%Y-%m-%d %H:%M:%S")] Application is down: $STATUS_CODE" | tee -a $LOG_FILE
fi

# This is the automate health checker script after making the changes make it executable using chmod +x automate_health_checker.sh

# To make the script to run at regular intervals automatically use the "crontab -e" command and add this in it */5 * * * * app_health_checker.sh