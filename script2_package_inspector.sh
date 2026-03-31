#!/bin/bash
# ==========================================
# Script 2: FOSS Package Inspector
# Author: Reshabh Lahoti | 24BCE10343
# Description: Checks if a package is installed
# and displays details + philosophy note
# ==========================================
# --- Package Name ---
PACKAGE="git"
echo "========================================"
echo " FOSS Package Inspector"
echo "========================================"
echo ""
# --- Check if package is installed ---
if command -v $PACKAGE &> /dev/null
then
    echo "[✔] $PACKAGE is installed on this system."
    echo ""
    echo "Version Information:"
    echo "----------------------------------------"
    $PACKAGE --version
else
    echo "[✘] $PACKAGE is NOT installed."
    echo "Install using:"
    echo "brew install $PACKAGE   (Mac)"
    echo "sudo apt install $PACKAGE   (Linux)"
fi
echo ""
echo "Philosophy Note:"
echo "----------------------------------------"
# --- Case Statement ---
case $PACKAGE in
    git)
        echo "Git: Created to remove dependency on proprietary systems."
        echo "It represents control, transparency, and distributed development."
        ;;
    apache2|httpd)
        echo "Apache: A web server that helped build the open internet."
        ;;
    firefox)
        echo "Firefox: A browser focused on privacy and open web standards."
        ;;
    python3|python)
        echo "Python: A community-driven language promoting simplicity and collaboration."
        ;;
    vlc)
        echo "VLC: A media player built openly to support all formats without restriction."
        ;;
    *)
        echo "$PACKAGE: An open-source tool contributing to modern computing."
        ;;
esac
echo ""
echo "========================================"