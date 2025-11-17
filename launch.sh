#!/bin/bash
# Solar Crowns - Universal Browser Launcher
# Detects available browsers and allows you to choose

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WEBSITE="$SCRIPT_DIR/index.html"

# Color codes for better UI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Banner
echo -e "${YELLOW}╔═══════════════════════════════════════════╗${NC}"
echo -e "${YELLOW}║                                           ║${NC}"
echo -e "${YELLOW}║          ${PURPLE}☀  SOLAR CROWNS  👑${YELLOW}           ║${NC}"
echo -e "${YELLOW}║                                           ║${NC}"
echo -e "${YELLOW}║      ${CYAN}Multi-Browser Launcher${YELLOW}              ║${NC}"
echo -e "${YELLOW}║                                           ║${NC}"
echo -e "${YELLOW}╚═══════════════════════════════════════════╝${NC}"
echo ""

# Detect available browsers
declare -a available_browsers=()
declare -a browser_commands=()
declare -a browser_names=()

# Check for Brave
if command -v brave &> /dev/null; then
    available_browsers+=("brave")
    browser_commands+=("brave")
    browser_names+=("Brave Browser")
fi

# Check for Microsoft Edge
if command -v microsoft-edge &> /dev/null; then
    available_browsers+=("edge")
    browser_commands+=("microsoft-edge")
    browser_names+=("Microsoft Edge")
elif command -v microsoft-edge-stable &> /dev/null; then
    available_browsers+=("edge")
    browser_commands+=("microsoft-edge-stable")
    browser_names+=("Microsoft Edge")
elif command -v microsoft-edge-dev &> /dev/null; then
    available_browsers+=("edge")
    browser_commands+=("microsoft-edge-dev")
    browser_names+=("Microsoft Edge (Dev)")
fi

# Check for Firefox
if command -v firefox &> /dev/null; then
    available_browsers+=("firefox")
    browser_commands+=("firefox")
    browser_names+=("Firefox")
elif command -v firefox-esr &> /dev/null; then
    available_browsers+=("firefox")
    browser_commands+=("firefox-esr")
    browser_names+=("Firefox ESR")
fi

# Check for Chrome/Chromium
if command -v google-chrome &> /dev/null; then
    available_browsers+=("chrome")
    browser_commands+=("google-chrome")
    browser_names+=("Google Chrome")
elif command -v google-chrome-stable &> /dev/null; then
    available_browsers+=("chrome")
    browser_commands+=("google-chrome-stable")
    browser_names+=("Google Chrome")
elif command -v chromium &> /dev/null; then
    available_browsers+=("chrome")
    browser_commands+=("chromium")
    browser_names+=("Chromium")
elif command -v chromium-browser &> /dev/null; then
    available_browsers+=("chrome")
    browser_commands+=("chromium-browser")
    browser_names+=("Chromium")
fi

# Check if any browsers were found
if [ ${#available_browsers[@]} -eq 0 ]; then
    echo -e "${RED}Error: No supported browsers found!${NC}"
    echo ""
    echo "Please install one of the following browsers:"
    echo "  - Brave Browser"
    echo "  - Microsoft Edge"
    echo "  - Firefox"
    echo "  - Google Chrome"
    exit 1
fi

# If browser specified as argument
if [ $# -eq 1 ]; then
    BROWSER_ARG=$(echo "$1" | tr '[:upper:]' '[:lower:]')

    for i in "${!available_browsers[@]}"; do
        if [[ "${available_browsers[$i]}" == "$BROWSER_ARG" ]] || [[ "${browser_names[$i],,}" == *"$BROWSER_ARG"* ]]; then
            echo -e "${GREEN}Launching in ${browser_names[$i]}...${NC}"
            ${browser_commands[$i]} "$WEBSITE" &
            exit 0
        fi
    done

    echo -e "${RED}Error: Browser '$1' not found or not installed.${NC}"
    echo ""
fi

# Display available browsers
echo -e "${CYAN}Available browsers on your system:${NC}"
echo ""

for i in "${!available_browsers[@]}"; do
    num=$((i + 1))
    echo -e "  ${GREEN}[$num]${NC} ${browser_names[$i]}"
done

echo ""
echo -e "  ${YELLOW}[A]${NC} All browsers (test in all)"
echo -e "  ${RED}[Q]${NC} Quit"
echo ""
echo -e -n "${BLUE}Select a browser [1-${#available_browsers[@]}/A/Q]: ${NC}"

read -r choice

# Process choice
case "$choice" in
    [Qq])
        echo -e "${YELLOW}Cancelled.${NC}"
        exit 0
        ;;
    [Aa])
        echo -e "${GREEN}Opening in all available browsers...${NC}"
        for i in "${!browser_commands[@]}"; do
            echo "  - ${browser_names[$i]}"
            ${browser_commands[$i]} "$WEBSITE" &
            sleep 0.5
        done
        echo -e "${GREEN}Done!${NC}"
        ;;
    [1-9])
        index=$((choice - 1))
        if [ $index -lt ${#available_browsers[@]} ]; then
            echo -e "${GREEN}Launching in ${browser_names[$index]}...${NC}"
            ${browser_commands[$index]} "$WEBSITE" &
        else
            echo -e "${RED}Invalid selection.${NC}"
            exit 1
        fi
        ;;
    *)
        echo -e "${RED}Invalid selection.${NC}"
        exit 1
        ;;
esac

echo ""
echo -e "${PURPLE}Solar Crowns website launched successfully!${NC}"
echo -e "${CYAN}Enjoy browsing at http://localhost or file://...${NC}"
