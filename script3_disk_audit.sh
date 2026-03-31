#!/bin/bash

# ==========================================
# Script 3: Disk and Permission Auditor
# Author: RESHABH LAHOTI | 24BCE10343
# Description: Checks directory size and permissions
# ==========================================

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo " Disk and Permission Audit"
echo "========================================"
echo ""

printf "%-15s %-25s %-10s\n" "Directory" "Permissions (Owner Group)" "Size"
echo "--------------------------------------------------------------"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # Print formatted output
        printf "%-15s %-25s %-10s\n" "$DIR" "$PERMS" "$SIZE"
    
    else
        printf "%-15s %-25s %-10s\n" "$DIR" "Not Found" "-"
    fi
done

echo ""
echo "----------------------------------------"
echo " Git-Specific Check"
echo "----------------------------------------"

# --- Check Git config ---
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    SIZE=$(du -h "$GIT_CONFIG" 2>/dev/null | cut -f1)
    
    echo "[✔] Git config found: $GIT_CONFIG"
    echo "Permissions: $PERMS"
    echo "Size: $SIZE"
else
    echo "[✘] No Git config found."
    echo "Run: git config --global user.name \"Your Name\""
fi

echo ""
echo "========================================"