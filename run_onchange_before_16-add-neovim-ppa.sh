#!/bin/bash
set -eufo pipefail

if ! grep -rq "neovim-ppa/stable" /etc/apt/sources.list.d/ 2>/dev/null; then
  sudo add-apt-repository -y ppa:neovim-ppa/stable
fi
