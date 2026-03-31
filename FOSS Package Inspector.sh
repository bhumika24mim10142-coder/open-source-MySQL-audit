#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Bhumika Singh Thakur
# Purpose: Check MySQL installation and show details

PACKAGE="mysql-server"

echo "====== PACKAGE INSPECTOR ======"

# Detect package manager
if command -v dpkg >/dev/null 2>&1; then
    PKG_MANAGER="dpkg"
elif command -v rpm >/dev/null 2>&1; then
    PKG_MANAGER="rpm"
else
    echo "No supported package manager found"
    exit 1
fi

echo "Using Package Manager: $PKG_MANAGER"
echo ""

# Check installation
if [ "$PKG_MANAGER" = "dpkg" ]; then
    dpkg -l | grep -i $PACKAGE >/dev/null
    INSTALLED=$?
else
    rpm -qa | grep -i $PACKAGE >/dev/null
    INSTALLED=$?
fi

if [ $INSTALLED -eq 0 ]; then
    echo "MySQL is installed on this system ✔"
    
    # Show version
    mysql --version
    
else
    echo "MySQL is NOT installed ✘"
fi

echo ""
echo "Note: MySQL is open-source under GPL v2 license."
echo "================================="