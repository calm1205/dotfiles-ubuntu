# dotfiles-ubuntu

## Setup

1. gitのinstall

```sh
sudo apt update
sudo apt install -y git
```

2. chezmoiのinstall

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

3. chezmoi init

```sh
chezmoi init --apply git@github.com:calm1205/dotfiles-ubuntu.git
```
