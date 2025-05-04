#!/bin/bash

COMMAND=$1
SUBCOMMAND=$2

RED="\033[0;31m"
RESET="\033[0m"

if [[ "$COMMAND" == "setup" ]]; then
  if [[ "$SUBCOMMAND" == "fullstack" ]]; then
    bash scripts/setup_fullstack.sh
  else
    echo -e "${RED}Unknown setup type: $SUBCOMMAND${RESET}"
  fi
else
  echo -e "${RED}Unknown command: $COMMAND${RESET}"
fi