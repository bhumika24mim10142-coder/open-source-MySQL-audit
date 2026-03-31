#!/bin/bash
# Script 1: System Identity Report
# Author: Bhumika Singh Thakur | Reg: 24MIM10142
# Purpose: Display system details in structured format

STUDENT_NAME="Bhumika Singh Thakur"
REG_NUMBER="24MIM10142"
SOFTWARE="MySQL Community Edition"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date '+%d %B %Y')
TIME=$(date '+%H:%M:%S')
HOSTNAME=$(hostname)

if [ -f /etc/os-release ]; then
    source /etc/os-release
    DISTRO="$PRETTY_NAME"
else
    DISTRO="Unknown OS"
fi

echo "========== SYSTEM REPORT =========="
echo "Student : $STUDENT_NAME ($REG_NUMBER)"
echo "Software: $SOFTWARE"
echo "-----------------------------------"
echo "Host    : $HOSTNAME"
echo "OS      : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo "Time    : $TIME"
echo "-----------------------------------"
echo "License : GPL v2 (Open Source)"
echo "==================================="