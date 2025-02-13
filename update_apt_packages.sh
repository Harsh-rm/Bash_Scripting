#!/bin/bash

# Create a log file with the current date in the filename in the current directory
LOG_FILE="$HOME/Documents/Bash Scripts/System_Logs/package_update_$(date +'%Y-%m-%d_%H-%M-%S').log"

# Timestamp
echo "$(date): Starting package update process..." >> "$LOG_FILE"

# Update package lists and log output
echo "$(date): Running 'sudo apt update'..." >> "$LOG_FILE"
echo "Password" | sudo -S apt update >> "$LOG_FILE" 2>&1

# Final message
echo "$(date): Package update process complete." >> "$LOG_FILE"

