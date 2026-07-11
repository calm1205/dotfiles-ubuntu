#!/bin/bash
set -eufo pipefail

if [ ! -f /etc/apt/sources.list.d/keyd-team-ubuntu-ppa-noble.sources ]; then
  sudo add-apt-repository -y ppa:keyd-team/ppa
fi
