#!/bin/bash

GREEN="\033[0;32m"
CYAN="\033[0;36m"
RED="\033[0;31m"
RESET="\033[0m"

echo -e "${CYAN}Installing Python...${RESET}"
sudo apt update && sudo apt install -y python3 python3-pip

if command -v python3 &>/dev/null; then
  echo -e "${GREEN}Python installed successfully!${RESET}"
else
  echo -e "${RED}Python installation failed.${RESET}"
fi