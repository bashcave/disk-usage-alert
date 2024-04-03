#!/bin/bash

# Disk Usage Alert Script
# Sends an alert if disk usage exceeds a specified threshold.
#
# @author BASHCAVE
# @version 1.0.0
# @license MIT

echo "Disk Usage Alert Script"
read -p "Enter the directory or partition to monitor (e.g., / or /home): " monitored_directory
read -p "Enter the disk usage alert threshold (percentage without % sign): " threshold

# Retrieve the current disk usage percentage for the specified directory/partition
current_usage=$(df -h "$monitored_directory" | grep -v Filesystem | awk '{print $5}' | sed 's/%//g')

# Check if current disk usage exceeds the threshold
if [ "$current_usage" -gt "$threshold" ]; then
    echo "Alert: Disk usage for $monitored_directory has exceeded the threshold."
    echo "Current Usage: $current_usage%"
else
    echo "Disk usage for $monitored_directory is within acceptable limits."
    echo "Current Usage: $current_usage%"
fi
