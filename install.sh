#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
#  install.sh — Installer for acsheet
# ─────────────────────────────────────────────────────────────

set -e

INSTALL_DIR="/usr/local/bin"
CMD_NAME="acsheet"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
RESET='\033[0m'
BOLD='\033[1m'

echo ""
echo -e "${CYAN}${BOLD}  Installing acsheet...${RESET}"
echo ""

# Check if bin/acsheet exists
if [[ ! -f "$SCRIPT_DIR/bin/acsheet" ]]; then
  echo -e "${RED}  Error: bin/acsheet not found. Run this script from the repo root.${RESET}"
  exit 1
fi

# Copy to install dir
if cp "$SCRIPT_DIR/bin/acsheet" "$INSTALL_DIR/$CMD_NAME" 2>/dev/null; then
  chmod +x "$INSTALL_DIR/$CMD_NAME"
  echo -e "  ${GREEN}✔${RESET}  Installed to ${INSTALL_DIR}/${CMD_NAME}"
else
  echo -e "${RED}  Permission denied. Trying with sudo...${RESET}"
  sudo cp "$SCRIPT_DIR/bin/acsheet" "$INSTALL_DIR/$CMD_NAME"
  sudo chmod +x "$INSTALL_DIR/$CMD_NAME"
  echo -e "  ${GREEN}✔${RESET}  Installed to ${INSTALL_DIR}/${CMD_NAME} (via sudo)"
fi

echo ""
echo -e "  ${GREEN}${BOLD}Done!${RESET} Run:  ${CYAN}acsheet${RESET}  or  ${CYAN}acsheet help${RESET}"
echo ""
