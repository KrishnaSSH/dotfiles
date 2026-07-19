#!/usr/bin/env bash

# https://github.com/krishnassh/dotfiles
# Author: KrishnaSSH
# LICENSE: CC0 1.0 Universal
# You may get a copy of this license from https://creativecommons.org/publicdomain/zero/1.0/legalcode.en

set -euo pipefail

theme_dir="$HOME/.config/sway/themes"
state_file="$HOME/.config/sway/colorscheme"

selection="$(ls -1 "$theme_dir" | sort | wmenu -i -l 20)"
[ -z "$selection" ] && exit 0

cp "$theme_dir/$selection" "$state_file"

swaymsg reload
