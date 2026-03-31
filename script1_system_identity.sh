#!/bin/bash
# ==========================================
# Script 1: System Identity Report
# Author: RESHABH LAHOTI | 24BCE10343
# Description: Displays system information
# ==========================================
# --- Variables ---
STUDENT_NAME="= Reshabh Lahoti"
SOFTWARE_CHOICE="Git"
LICENSE="GPL v2"
# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime | awk -F'(up |,)' '{print $2}')
CURRENT_DATE=$(date "+%d %B %Y %H:%M:%S")
# Works for both Linux and Mac
DISTRO=$(uname -s)
# --- Display Output ---
echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo ""
echo "Chosen Software: $SOFTWARE_CHOICE"
echo ""
echo "System Information"
echo "----------------------------------------"
echo "OS           : $DISTRO"
echo "Kernel       : $KERNEL"
echo "Logged in as : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo ""
echo "License Info"
echo "----------------------------------------"
echo "This system runs Unix/Linux based OS."
echo "Git is licensed under $LICENSE."
echo "You are free to use, modify, and share it."
echo ""
echo "“In open source, you control your own destiny.”"
echo "========================================"