#!/bin/bash
# Restart StrongSwan VPN connection

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Log directory and file
LOG_DIR="$HOME/script-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/vpn-restart-$(date +%Y-%m-%d-%H-%M-%S).log"

# Clean up old logs (keep only the 10 most recent)
LOG_COUNT=$(ls -1 "$LOG_DIR"/vpn-restart-*.log 2>/dev/null | wc -l)
if [ "$LOG_COUNT" -ge 10 ]; then
    echo -e "${YELLOW}Found $LOG_COUNT log files, removing oldest to keep 10...${NC}"
    # Get the oldest logs to remove
    LOGS_TO_REMOVE=$(ls -1t "$LOG_DIR"/vpn-restart-*.log | tail -n +10)
    for log in $LOGS_TO_REMOVE; do
        # Extract timestamp from filename (format: vpn-restart-YYYY-MM-DD-HH-MM-SS.log)
        TIMESTAMP=$(basename "$log" | sed 's/vpn-restart-\(.*\)\.log/\1/')
        # Format timestamp for display (YYYY-MM-DD HH:MM:SS)
        FORMATTED_TIMESTAMP=$(echo "$TIMESTAMP" | sed 's/-/ /4' | sed 's/-/:/g; s/ /-/3')
        echo -e "${YELLOW}Removing old log: $FORMATTED_TIMESTAMP${NC}"
        rm -f "$log"
    done
else
    echo -e "${GREEN}Log count: $LOG_COUNT (no cleanup needed)${NC}"
fi

# Start logging
echo "Logging to: $LOG_FILE"
exec > >(tee -a "$LOG_FILE") 2>&1

# Function to check if last command succeeded
check_status() {
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ $1 successful${NC}"
        return 0
    else
        echo -e "${RED}✗ $1 failed${NC}"
        return 1
    fi
}

echo "====== StrongSwan VPN Restart ======"
echo ""

# Stop StrongSwan
echo "Stopping StrongSwan..."
sudo systemctl stop strongswan-starter
check_status "Stop StrongSwan" || exit 1

# Kill charon process
echo ""
echo "Killing charon process..."
sudo pkill charon || true
echo -e "${GREEN}✓ Charon process killed${NC}"

# Clean up files
echo ""
echo "Cleaning up PID and control files..."
sudo rm -f /var/run/charon.pid /var/run/charon.ctl
check_status "Cleanup files" || exit 1

# Start StrongSwan
echo ""
echo "Starting StrongSwan..."
sudo systemctl start strongswan-starter
check_status "Start StrongSwan" || exit 1

# Check status
echo ""
echo "Checking status..."
sudo systemctl status strongswan-starter --no-pager
check_status "Status check"

# Bring up VPN connection
echo ""
echo "Bringing up VPN connection..."
sudo ipsec up IKEv2_TFK
check_status "VPN connection" || exit 1

echo ""
echo -e "${GREEN}====== VPN restart complete! ======${NC}"
echo "Log saved to: $LOG_FILE"
