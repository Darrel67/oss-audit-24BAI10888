#!/bin/bash  # Use Bash shell

STUDENT_NAME="Darrel Shibu"          # Store student name
SOFTWARE_CHOICE="Linux Kernel"       # Store chosen software name

KERNEL=$(uname -r)                   # Get current kernel version
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')  # Extract distro name
USER_NAME=$(whoami)                  # Get logged-in username
HOME_DIR=$HOME                       # Get user's home directory
UPTIME=$(uptime -p)                  # Get system uptime
CURRENT_DATE=$(date)                 # Get current date and time

echo "==============================================="  # Print separator
echo " Open Source Audit — $STUDENT_NAME"              # Print header
echo "==============================================="
echo "Software Choice : $SOFTWARE_CHOICE"              # Display software
echo "Distribution    : $DISTRO"                       # Display distro
echo "Kernel Version  : $KERNEL"                       # Display kernel version
echo "User            : $USER_NAME"                    # Display username
echo "Home Directory  : $HOME_DIR"                     # Display home path
echo "Uptime          : $UPTIME"                       # Display uptime
echo "Current Date    : $CURRENT_DATE"                 # Display date
echo "License: The Linux Kernel is licensed under GPL v2."  # Show license
echo "==============================================="
