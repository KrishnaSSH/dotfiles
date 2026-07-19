#!/usr/bin/env bash

# https://github.com/krishnassh/dotfiles
# Author: KrishnaSSH
# LICENSE: CC0 1.0 Universal
# You may get a copy of this license from https://creativecommons.org/publicdomain/zero/1.0/legalcode.en

set -euo pipefail

echo 'creating alias file'
touch "$HOME/.config/shell/aliasrc"

echo 'creating directories'
mkdir -p "$HOME/.local/scripts"
mkdir -p "$HOME/.config/foot"
mkdir -p "$HOME/.config/sway"
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/shell"

echo 'copying scripts'
cp -r .local/scripts/. "$HOME/.local/scripts/"

echo 'copying foot config'
cp -r foot/. "$HOME/.config/foot/"

echo 'copying sway config'
cp -r sway/. "$HOME/.config/sway/"

echo 'copying neovim config'
cp -r nvim/. "$HOME/.config/nvim/"

echo 'copying zsh config'
cp -r zsh/. "$HOME/"

echo 'copying tmux config'
cp -r tmux/. "$HOME/"

echo 'done'
