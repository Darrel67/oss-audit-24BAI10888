#!/bin/bash  # Use Bash shell

PACKAGE="linux-image-$(uname -r)"   # Set package name using current kernel version

if dpkg -l | grep -q "$PACKAGE"; then  # Check if kernel package exists
    echo "$PACKAGE is installed."      # Print confirmation
    dpkg -l | grep "$PACKAGE"          # Show package details
else
    echo "Kernel package not found."   # Print message if not installed
fi

case $PACKAGE in                       # Start case statement
    linux-image-*)                     # Match kernel pattern
        echo "Linux Kernel: Open-source system core."  # Description message
        ;;
    *)
        echo "Unknown package."        # Default message
        ;;
esac                                   # End case
