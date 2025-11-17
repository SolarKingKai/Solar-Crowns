#!/bin/bash
# Solar Crowns - Open in Google Chrome Browser
# Run this script to view the website in Chrome

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Try different Chrome command variations
if command -v google-chrome &> /dev/null; then
    google-chrome "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Google Chrome..."
elif command -v google-chrome-stable &> /dev/null; then
    google-chrome-stable "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Google Chrome..."
elif command -v chromium &> /dev/null; then
    chromium "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Chromium..."
elif command -v chromium-browser &> /dev/null; then
    chromium-browser "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Chromium..."
else
    echo "Error: Google Chrome/Chromium not found on this system."
    echo "Please install Chrome or use another browser."
    exit 1
fi
