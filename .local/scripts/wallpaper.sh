#!/usr/bin/env bash

# https://github.com/krishnassh/dotfiles
# Author: KrishnaSSH
# LICENSE: CC0 1.0 Universal
# You may get a copy of this license from https://creativecommons.org/publicdomain/zero/1.0/legalcode.en

set -euo pipefail

dir="$HOME/.local/share/wallpapers"
state="$HOME/.local/state/wallpaper/current"

mkdir -p "${state%/*}"

if [ "${1:-}" = "-p" ] || [ ! -f "$state" ]; then
    w=$(find "$dir" -maxdepth 1 -type f -printf '%f\n' | wmenu -i -l 10)
    [ -n "$w" ] || exit 0
    printf '%s\n' "$w" > "$state"
fi

pkill swaybg 2>/dev/null || true
swaybg -i "$dir/$(cat "$state")" &
