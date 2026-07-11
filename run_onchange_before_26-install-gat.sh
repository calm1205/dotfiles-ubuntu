#!/bin/bash
set -eufo pipefail

if ! command -v gat >/dev/null 2>&1; then
  mkdir -p "$HOME/.local/bin"
  url=$(curl -sL https://api.github.com/repos/koki-develop/gat/releases/latest \
    | grep browser_download_url \
    | grep "Linux_x86_64.tar.gz" \
    | cut -d '"' -f 4)
  curl -sL "$url" -o /tmp/gat.tar.gz
  tar -xzf /tmp/gat.tar.gz -C "$HOME/.local/bin" gat
  rm /tmp/gat.tar.gz
fi
