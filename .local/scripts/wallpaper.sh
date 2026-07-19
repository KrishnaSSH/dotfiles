#!/usr/bin/env bash

# https://github.com/krishnassh/dotfiles
# Author: KrishnaSSH
# LICENSE: CC0 1.0 Universal
# You may get a copy of this license from https://creativecommons.org/publicdomain/zero/1.0/legalcode.en

set -euo pipefail

wallpaper_dir="$HOME/.local/share/wallpapers"
state_file="$HOME/.local/state/wallpaper/current"

mkdir -p "$(dirname "$state_file")"

if [ ! -f "$state_file" ]; then
  selection="$(ls -1 "$wallpaper_dir" | wmenu -i -l 10)"
  [ -n "${selection}" ] || exit 0
  printf '%s\n' "$selection" > "$state_file"
fi

selection="$(cat "$state_file")"
wallpaper="$wallpaper_dir/$selection"
[ -f "$wallpaper" ] || exit 1

pkill -f 'swaybg' || true
swaybg -i "$wallpaper" &
