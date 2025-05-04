#!/bin/bash

GREEN="\033[0;32m"
CYAN="\033[0;36m"
RED="\033[0;31m"
RESET="\033[0m"

echo -e "${CYAN}Installing Go...${RESET}"
sudo apt update && sudo apt install -y golang-go

if command -v go &>/dev/null; then
  echo -e "${GREEN}Go installed successfully!${RESET}"
else
  echo -e "${RED}Go installation failed.${RESET}"
fi