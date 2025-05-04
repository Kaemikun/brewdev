#!/bin/bash

CYAN="\033[0;36m"
GREEN="\033[0;32m"
RED="\033[0;31m"
RESET="\033[0m"

echo -e "${CYAN}Fullstack setup selected.${RESET}"

echo "Choose your programming language:"
select lang in "JavaScript" "Python" "Go"; do
  case $lang in
    JavaScript|TypeScript)
      echo -e "${GREEN}You selected JavaScript/TypeScript${RESET}"
      bash "$(dirname "$0")/install/install_node.sh"
      break
      ;;
    Python)
      echo -e "${GREEN}You selected Python${RESET}"
      bash "$(dirname "$0")/install/install_python.sh"
      break
      ;;
    Go)
      echo -e "${GREEN}You selected Go${RESET}"
      bash "$(dirname "$0")/install/install_go.sh"
      break
      ;;
    *)
      echo -e "${RED}Invalid option. Try again.${RESET}"
      ;;
  esac
done

bash "$(dirname "$0")/install/install_docker.sh"
bash "$(dirname "$0")/install/install_docker_hub.sh"
bash "$(dirname "$0")/install/install_postgres.sh"

echo -e "${GREEN}✅ Fullstack environment setup complete!${RESET}"