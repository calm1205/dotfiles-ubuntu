#!/bin/bash
set -eufo pipefail

NVIM_TAG="stable"
INSTALL_DIR="/opt/nvim-linux-x86_64"

if dpkg -s neovim 2>/dev/null | grep -q '^Status: install ok installed'; then
  sudo apt purge -y neovim neovim-runtime
fi

if [ ! -x "$INSTALL_DIR/bin/nvim" ]; then
  curl -sSLo /tmp/nvim-linux-x86_64.tar.gz "https://github.com/neovim/neovim/releases/download/${NVIM_TAG}/nvim-linux-x86_64.tar.gz"
  sudo rm -rf "$INSTALL_DIR"
  sudo tar -C /opt -xzf /tmp/nvim-linux-x86_64.tar.gz
  rm /tmp/nvim-linux-x86_64.tar.gz
fi

sudo ln -sf "$INSTALL_DIR/bin/nvim" /usr/local/bin/nvim
