#!/bin/bash
set -eufo pipefail

sudo mkdir -p /etc/keyd
sudo tee /etc/keyd/default.conf > /dev/null <<'EOF'
[ids]
*

[meta]
c = C-c
v = C-v
w = C-w
z = C-z
t = C-t

[meta+shift]
backslash = C-tab
rightbrace = C-S-tab
t = C-S-t
z = C-S-z

[control]
h = left
j = down
k = up
l = right
a = home
e = end
] = esc
b = backspace
m = enter
f = macro(S-end 10ms backspace)
u = macro(S-home 10ms backspace)
EOF

sudo systemctl enable --now keyd
sudo systemctl restart keyd
