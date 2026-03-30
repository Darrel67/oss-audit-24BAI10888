#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Darrel Shibu
# Purpose: Audit important system directories and check kernel config directory

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "        Directory Audit Report"
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "----------------------------------------"
echo " Checking Linux Kernel Config Directory"
echo "----------------------------------------"

KERNEL_VERSION=$(uname -r)
KERNEL_CONFIG="/boot/config-$KERNEL_VERSION"

if [ -f "$KERNEL_CONFIG" ]; then
    CONFIG_PERMS=$(ls -l "$KERNEL_CONFIG" | awk '{print $1, $3, $4}')
    echo "Kernel config found: $KERNEL_CONFIG"
    echo "Permissions: $CONFIG_PERMS"
else
    echo "Kernel config file not found."
fi
