#!/usr/bin/env bash
# Installer script for antigravity-updater
set -euo pipefail

INSTALL_DIR="${HOME}/.local/bin"
BIN_NAME="antigravity-update"
REPO_RAW="https://raw.githubusercontent.com/iRaziul/antigravity-updater/main/antigravity-update"

mkdir -p "$INSTALL_DIR"

echo "Installing antigravity-update to $INSTALL_DIR..."
curl -fsSL "$REPO_RAW" -o "${INSTALL_DIR}/${BIN_NAME}"
chmod +x "${INSTALL_DIR}/${BIN_NAME}"

ln -sf "${INSTALL_DIR}/${BIN_NAME}" "${INSTALL_DIR}/update-antigravity"

echo "✓ Successfully installed antigravity-update to ${INSTALL_DIR}/${BIN_NAME}"
echo "Make sure ${INSTALL_DIR} is in your PATH."
