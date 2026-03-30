#!/bin/bash  # Use Bash shell

LOGFILE=$1                     # First argument = log file path
KEYWORD=${2:-"error"}           # Second argument = keyword (default "error")
COUNT=0                         # Initialize counter

if [ ! -f "$LOGFILE" ]; then    # Check if file exists
    echo "Error: File not found."
    exit 1                      # Exit if missing
fi

while [ ! -s "$LOGFILE" ]; do   # If file is empty
    echo "File is empty. Waiting..."
    sleep 5                     # Wait 5 seconds
done

while IFS= read -r LINE; do     # Read file line by line

    if echo "$LINE" | grep -iq "$KEYWORD"; then  # Check for keyword (case insensitive)
        COUNT=$((COUNT + 1))   # Increment counter
    fi

done < "$LOGFILE"               # Input from logfile

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"  # Print summary
grep -i "$KEYWORD" "$LOGFILE" | tail -5  # Show last 5 matches
