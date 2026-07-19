#!/usr/bin/env bash

# https://github.com/krishnassh/dotfiles
# Author: KrishnaSSH
# LICENSE: CC0 1.0 Universal
# You may get a copy of this license from https://creativecommons.org/publicdomain/zero/1.0/legalcode.en

set -euo pipefail

mkdir -p "$HOME/.local/scripts"
mkdir -p "$HOME/.config/foot"
mkdir -p "$HOME/.config/sway"
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/shell"

cp -r .local/scripts/. "$HOME/.local/scripts/"
cp -r foot/. "$HOME/.config/foot/"
cp -r sway/. "$HOME/.config/sway/"
cp -r nvim/. "$HOME/.config/nvim/"
cp -r zsh/. "$HOME/"
cp -r tmux/. "$HOME/"

touch "$HOME/.config/shell/aliasrc"
