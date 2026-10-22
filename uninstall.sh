#!/usr/bin/env bash
# Uninstaller for acsheet

INSTALL_DIR="/usr/local/bin"
CMD_NAME="acsheet"

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

if [[ -f "$INSTALL_DIR/$CMD_NAME" ]]; then
  rm "$INSTALL_DIR/$CMD_NAME" 2>/dev/null || sudo rm "$INSTALL_DIR/$CMD_NAME"
  echo -e "${GREEN}✔  acsheet removed from ${INSTALL_DIR}${RESET}"
else
  echo -e "${RED}acsheet is not installed at ${INSTALL_DIR}${RESET}"
fi
