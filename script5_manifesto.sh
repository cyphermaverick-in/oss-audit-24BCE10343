#!/bin/bash

# ==========================================
# Script 5: Open Source Manifesto Generator
# Author: RESHABH LAHOTI | 24BCE10343
# Description: Generates a personalized manifesto
# ==========================================

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

# --- Date and File ---
DATE=$(date "+%d %B %Y")
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo ""

# --- Write to File ---
echo "========================================" > "$OUTPUT"
echo " MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo " Generated on: $DATE" >> "$OUTPUT"
echo " By: $(whoami)" >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I believe in the power of open-source software." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on $TOOL — not built for profit alone," >> "$OUTPUT"
echo "but shaped by a community that values shared progress." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "To me, freedom means $FREEDOM." >> "$OUTPUT"
echo "It is the ability to learn, modify, and build without restriction." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day, I will create $BUILD and share it openly," >> "$OUTPUT"
echo "so others can build on it, just as I have built on the work of others." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Open source is not just code — it is collaboration." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"

# --- Display Output ---
echo "[✔] Manifesto saved to: $OUTPUT"
echo ""
echo "Your Manifesto:"
echo "----------------------------------------"
cat "$OUTPUT"

echo ""
echo "========================================"