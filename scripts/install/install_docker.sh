#!/bin/bash

echo -e "${CYAN}Installing Docker...${RESET}"
  sudo apt install -y docker.io
  
  echo -e "${CYAN}Running Docker on your computer...${RESET}"
  sudo systemctl start docker
  sudo systemctl enable docker