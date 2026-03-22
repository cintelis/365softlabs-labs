#!/usr/bin/env sh
set -eu

BIN_URL="https://labs.365softlabs.com/cli/365soft"
TARGET_DIR="${HOME}/.local/bin"
TARGET_BIN="${TARGET_DIR}/365soft"

mkdir -p "${TARGET_DIR}"
curl -fsSL "${BIN_URL}" -o "${TARGET_BIN}"
chmod +x "${TARGET_BIN}"

echo "Installed 365soft to ${TARGET_BIN}"
echo "Add ${TARGET_DIR} to PATH if needed."
