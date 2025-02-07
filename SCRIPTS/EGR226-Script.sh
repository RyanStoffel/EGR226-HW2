#!/bin/bash

# Prompt the user for the target IP or range
read -p "Enter the target IP address or range: " target

echo -e "\n[1] Running Ping Scan to find active hosts...\n"
# Ping scan to find active hosts
nmap -sn -PE "$target"

echo -e "\n[2] Scanning for the top 10 open ports...\n"
# Scan for the top 10 open ports
nmap "$target" --top-ports 10 --open

echo -e "\n[3] Detecting services and versions on open ports...\n"
# Service and version detection
nmap -sV "$target"

echo -e "\nScanning completed!"

