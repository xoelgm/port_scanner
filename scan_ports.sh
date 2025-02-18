#!/bin/bash

# Colors to enhance the output
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

# Function to check if a port is open
function checkPort() {
    local host=$1
    local port=$2
    timeout 1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && \
        echo -e "${GREEN}[+] Host $host - Port $port (OPEN)${RESET}" &
}

# Validate that the user entered an IP or domain
if [[ -z "$1" ]]; then
    echo -e "${RED}[!] Usage: $0 <ip-address>${RESET}"
    exit 1
fi

host=$1

# Scan all ports from 1 to 65535
for port in {1..65535}; do
    checkPort "$host" "$port"
done

wait  # Wait for all processes to finish