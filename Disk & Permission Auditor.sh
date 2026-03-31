#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Bhumika Singh Thakur
# Purpose: Check directory permissions and disk usage

echo "====== SYSTEM DIRECTORY AUDIT ======"

DIRS=("/etc" "/home" "/var/log" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        echo ""
        echo "Directory: $DIR"
        
        PERM=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Permissions: $PERM"
        echo "Owner      : $OWNER"
        echo "Size       : $SIZE"
    else
        echo "$DIR not found"
    fi
done

echo ""
echo "------ MySQL Specific Check ------"

MYSQL_DIRS=("/var/lib/mysql" "/etc/mysql" "/var/log/mysql")

for DIR in "${MYSQL_DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        echo "$DIR exists ✔"
    else
        echo "$DIR missing ✘"
    fi
done

echo "=================================="