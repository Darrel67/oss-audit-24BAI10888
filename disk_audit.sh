#!/bin/bash  # Use Bash shell

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")  # Array of directories

for DIR in "${DIRS[@]}"; do   # Loop through each directory

    if [ -d "$DIR" ]; then    # Check if directory exists

        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')  # Get permissions, owner, group
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)        # Get directory size

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"   # Print result
    else
        echo "$DIR does not exist."  # If directory missing
    fi

done

KERNEL_VERSION=$(uname -r)                     # Get kernel version
KERNEL_CONFIG="/boot/config-$KERNEL_VERSION"   # Build config file path

if [ -f "$KERNEL_CONFIG" ]; then               # Check if config file exists
    CONFIG_PERMS=$(ls -l "$KERNEL_CONFIG" | awk '{print $1, $3, $4}')  # Get file permissions
    echo "Kernel config found: $KERNEL_CONFIG" # Print file path
    echo "Permissions: $CONFIG_PERMS"          # Print permissions
else
    echo "Kernel config file not found."       # If file not found
fi
