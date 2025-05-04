#!/bin/bash

# Colors
GREEN="\033[0;32m"
CYAN="\033[0;36m"
RED="\033[0;31m"
RESET="\033[0m"

echo -e "${CYAN}Installing PostgreSQL...${RESET}"
sudo apt install -y postgresql postgresql-contrib
