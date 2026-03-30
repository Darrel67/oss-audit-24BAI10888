#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="linux-image-$(uname -r)"

if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep "$PACKAGE"
else
    echo "Kernel package not found via dpkg."
fi

case $PACKAGE in
    linux-image-*)
        echo "Linux Kernel: The free and open foundation of modern computing."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
