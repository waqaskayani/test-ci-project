#!/bin/bash

DESTINATION_PATH="/home/ubuntu/app-deployment"

# Start the Java application
nohup java -jar "${DESTINATION_PATH}/my-app-1.0-SNAPSHOT.jar" > "${DESTINATION_PATH}/app.log" 2>&1 &
