#!/bin/bash

# ==========================================
# Script 4: Log File Analyzer
# Author: RESHABH LAHOTI | 24BCE10343
# Description: Counts keyword occurrences in log file
# ==========================================

# --- Input Arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error

COUNT=0

echo "========================================"
echo " Log File Analyzer"
echo "========================================"
echo ""

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "[✘] File not found: $LOGFILE"
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "[!] File is empty: $LOGFILE"
    exit 0
fi

echo "Analyzing file: $LOGFILE"
echo "Keyword       : $KEYWORD"
echo ""

# --- Read file line by line ---
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print result ---
echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT time(s)."

# --- Show last 5 matches ---
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "========================================"