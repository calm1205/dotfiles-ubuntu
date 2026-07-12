#!/bin/bash
set -eufo pipefail

gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 17
gsettings set org.gnome.desktop.peripherals.keyboard delay 312
gsettings set org.gnome.desktop.peripherals.mouse speed 1.0
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('ibus', 'mozc-jp')]"
