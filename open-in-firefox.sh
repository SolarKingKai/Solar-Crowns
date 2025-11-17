#!/bin/bash
# Solar Crowns - Open in Firefox Browser
# Run this script to view the website in Firefox

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Try different Firefox command variations
if command -v firefox &> /dev/null; then
    firefox "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Firefox..."
elif command -v firefox-esr &> /dev/null; then
    firefox-esr "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Firefox ESR..."
else
    echo "Error: Firefox not found on this system."
    echo "Please install Firefox or use another browser."
    exit 1
fi
