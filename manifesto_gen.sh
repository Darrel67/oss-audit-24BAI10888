#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Darrel Shibu

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_$USER_NAME.txt"

echo "" > "$OUTPUT"

echo "Open Source Manifesto" >> "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "Author: $USER_NAME" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I believe in the power of open source." >> "$OUTPUT"
echo "Every day I rely on tools like $TOOL, which prove that collaboration builds stronger systems." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share knowledge." >> "$OUTPUT"
echo "If given the opportunity, I would build $BUILD and release it openly so others can improve it." >> "$OUTPUT"
echo "Standing on the foundation of the Linux Kernel, I commit to contributing back to the community." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"

# Alias example (demonstration only, not permanent)
# You could create an alias like:
# alias manifesto="./script5.sh"
