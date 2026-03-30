#!/bin/bash  # Use Bash shell

read -p "1. Name one open-source tool you use every day: " TOOL   # Get tool input
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM  # Get freedom input
read -p "3. Name one thing you would build and share freely: " BUILD  # Get build idea

DATE=$(date '+%d %B %Y')         # Get current date
USER_NAME=$(whoami)              # Get username
OUTPUT="manifesto_$USER_NAME.txt"  # Create output filename

echo "Open Source Manifesto" > "$OUTPUT"  # Write title (overwrite file)
echo "Generated on: $DATE" >> "$OUTPUT"   # Append date
echo "Author: $USER_NAME" >> "$OUTPUT"    # Append author
echo "" >> "$OUTPUT"

echo "I believe in open collaboration." >> "$OUTPUT"
echo "I use tools like $TOOL daily." >> "$OUTPUT"
echo "Freedom means $FREEDOM to me." >> "$OUTPUT"
echo "I would build $BUILD and share it freely." >> "$OUTPUT"

cat "$OUTPUT"  # Display manifesto

# alias manifesto="./script5.sh"  # Example alias (comment only)
