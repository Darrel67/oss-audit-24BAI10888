#!/bin/bash
# Script 1: System Identity Report
# Author: Darrel Shibu | Course: Open Source Software

STUDENT_NAME="Darrel Shibu"
SOFTWARE_CHOICE="Linux Kernel"

KERNEL=$(uname -r)
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

echo "==============================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "==============================================="
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo ""
echo "License: The Linux Kernel is licensed under GPL v2."
echo "==============================================="
