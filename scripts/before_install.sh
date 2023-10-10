#!/bin/bash

# Install Java if it's not installed
if ! command -v java &> /dev/null
then
    sudo apt-get update -y
    sudo apt-get install -y openjdk-17-jre -y
fi


# Creating a backup of Jar binary
DESTINATION_PATH="/home/ubuntu/app-deployment"
BACKUP_PATH="/home/ubuntu/backup-binaries"

# Create a backup directory if it doesn't exist
mkdir -p $BACKUP_PATH

# If there's an existing JAR, backup it
if [ -f "${DESTINATION_PATH}/my-app-1.0-SNAPSHOT.jar" ]; then
    cp "${DESTINATION_PATH}/my-app-1.0-SNAPSHOT.jar" "${BACKUP_PATH}/my-app-1.0-SNAPSHOT-$(date +%F-%T).jar"
fi
echo "Successfully created backup of last deployment binary.."
