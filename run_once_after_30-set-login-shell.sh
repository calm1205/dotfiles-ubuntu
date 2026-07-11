#!/bin/bash
set -eufo pipefail

ZSH_PATH="$(command -v zsh)"
CURRENT_SHELL="$(getent passwd "$USER" | cut -d: -f7)"

if [ "$CURRENT_SHELL" != "$ZSH_PATH" ]; then
  sudo usermod -s "$ZSH_PATH" "$USER"
fi
