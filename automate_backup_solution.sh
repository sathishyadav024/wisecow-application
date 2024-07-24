#!/bin/bash

# source and backup directories
SOURCE_DIR="here we have to define the path of source directory"
BACKUP_DIR="here we have to define the path of backup directory"

# Creating a timestamp for the backup file and log file
TIMESTAMP=$(date +"%F")
LOG_FILE="here we have to write the path of backup log file"

# Define the name of the backup file
BACKUP_FILE="backup-$TIMESTAMP.tar.gz"

# Create the backup using tar and gzip
tar -czf $BACKUP_DIR/$BACKUP_FILE $SOURCE_DIR

# Check if the backup command was successful and log the result
if [ $? -eq 0 ]; then
    echo "[$(date +"%Y-%m-%d %H:%M:%S")] Backup successful: $BACKUP_FILE" >> $LOG_FILE

    # Upload to AWS S3
    S3_BUCKET="s3://your-bucket-name/path/to/backup" # here we have to write the s3 uri
    aws s3 cp $BACKUP_DIR/$BACKUP_FILE $S3_BUCKET

    if [ $? -eq 0 ]; then
        echo "[$(date +"%Y-%m-%d %H:%M:%S")] Upload successful: $BACKUP_FILE" >> $LOG_FILE
    else
        echo "[$(date +"%Y-%m-%d %H:%M:%S")] Upload failed!" >> $LOG_FILE
    fi
else
    echo "[$(date +"%Y-%m-%d %H:%M:%S")] Backup failed!" >> $LOG_FILE
fi


# This is the automate health checker script after making the changes make it executable using chmod +x automated_backup_solution.sh

# To make the script to run at regular intervals automatically use the "crontab -e" command and add this in it */5 * * * * /path/to/app_health_checker.sh