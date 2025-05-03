#!/bin/bash

COMMAND=$1
SUBCOMMAND=$2

# Colors
GREEN="\033[0;32m"
CYAN="\033[0;36m"
RED="\033[0;31m"
RESET="\033[0m"

function install_node() {
  echo -e "${CYAN}Installing Node.js...${RESET}"
  sudo apt update && sudo apt install -y nodejs npm
}

function install_docker() {
  echo -e "${CYAN}Installing Docker...${RESET}"
  sudo apt install -y docker.io
  sudo systemctl start docker
  sudo systemctl enable docker
}

function install_docker_hub() {
  echo -e "${CYAN}Installing Docker Hub CLI...${RESET}"
  sudo snap install docker
}

function install_postgres() {
  echo -e "${CYAN}Installing PostgreSQL...${RESET}"
  sudo apt install -y postgresql postgresql-contrib
}

function setup_fullstack() {
  echo -e "${CYAN}Fullstack setup selected.${RESET}"

  echo "Choose your programming language:"
  select lang in "JavaScript" "TypeScript" "Python" "Go"; do
    case $lang in
      JavaScript|TypeScript|Python|Go)
        echo -e "${GREEN}You selected $lang${RESET}"
        break
        ;;
      *)
        echo -e "${RED}Invalid option. Try again.${RESET}"
        ;;
    esac
  done

  install_node
  install_docker
  install_docker_hub
  install_postgres

  echo -e "${GREEN}✅ Fullstack environment setup complete!${RESET}"
}

# Main command handler
if [[ "$COMMAND" == "setup" ]]; then
  if [[ "$SUBCOMMAND" == "fullstack" ]]; then
    setup_fullstack
  else
    echo -e "${RED}Unknown setup type: $SUBCOMMAND${RESET}"
  fi
else
  echo -e "${RED}Unknown command: $COMMAND${RESET}"
fi
