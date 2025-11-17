#!/bin/bash
# Solar Crowns - Open in Brave Browser
# Run this script to view the website in Brave

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
brave "$SCRIPT_DIR/index.html" &

echo "Opening Solar Crowns website in Brave browser..."
