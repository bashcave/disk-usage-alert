# Disk Usage Alert Script

## Overview

The Disk Usage Alert Script monitors the disk usage of a specified directory or partition and alerts the user if the usage exceeds a predetermined threshold. This script is useful for learning about disk space management, conditional logic in Bash, and extracting specific data from command output.

## Features

- Monitors disk usage of a specified directory or partition.
- Alerts if usage exceeds the user-defined threshold.
- Demonstrates usage of `df`, `grep`, `awk`, and conditional statements.

## Prerequisites

- Bash shell
- Basic command line utilities (`df`, `grep`, `awk`)

## Usage

Follow these steps to use the script:

1. Make the script executable:

```bash
chmod +x disk-usage-alert.sh
```

2. Run the script and follow the prompts:

```bash
./disk-usage-alert.sh
```

## How It Works

- The script prompts the user for a directory or partition to monitor and a threshold for disk usage alerts.
- It uses the `df -h` command to get the current disk usage percentage for the specified directory or partition. The `grep`, `awk`, and `sed` utilities are used to extract and clean up the necessary information from the `df` command output.
- A conditional statement checks if the current disk usage exceeds the threshold. If it does, the script prints an alert message to the console; otherwise, it informs the user that the disk usage is within acceptable limits.

## Important Notes

- Ensure the directory or partition path and threshold are correctly entered to avoid false alerts or missed alerts.
- The script provides a basic alert mechanism through console messages. For more advanced monitoring, consider integrating email notifications or logging.
- Regular monitoring can help prevent disk space issues before they impact system performance or availability.
