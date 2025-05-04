#!/bin/bash

GREEN="\033[0;32m"
CYAN="\033[0;36m"
RED="\033[0;31m"
RESET="\033[0m"

echo -e "${CYAN}Installing Node.js...${RESET}"
sudo apt update && sudo apt install -y nodejs npm