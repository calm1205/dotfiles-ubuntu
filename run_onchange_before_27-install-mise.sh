#!/bin/bash
set -eufo pipefail

if ! command -v mise >/dev/null 2>&1; then
  curl -sS https://mise.run | sh
fi
