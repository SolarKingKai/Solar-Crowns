#!/bin/bash
# Solar Crowns - Open in Microsoft Edge Browser
# Run this script to view the website in Microsoft Edge

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Try different Edge command variations
if command -v microsoft-edge &> /dev/null; then
    microsoft-edge "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Microsoft Edge..."
elif command -v microsoft-edge-stable &> /dev/null; then
    microsoft-edge-stable "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Microsoft Edge..."
elif command -v microsoft-edge-dev &> /dev/null; then
    microsoft-edge-dev "$SCRIPT_DIR/index.html" &
    echo "Opening Solar Crowns website in Microsoft Edge (Dev)..."
else
    echo "Error: Microsoft Edge not found on this system."
    echo "Please install Microsoft Edge or use another browser."
    exit 1
fi
