## Sway

Most of the critical bindings are similar to the default Sway configuration at `/etc/sway/config`. However, I have included some of my personal bindings that I use.

The `$Mod` key is the Super key and can be changed in the config.

### Applications

* `$Mod + Enter` - Opens the default terminal`foot` in this case, but this can be changed in the Sway config.
* `$Mod + W` - Closes the currently focused window.
* `$Mod + D` - Opens the application launcher using `wmenu`.
* `$Mod + N` - Opens the default browser, `firefox-wayland` is set as default. (firefox-wayland) is just a wrapper for `MOZ_ENABLE_WAYLAND=1 firefox` on voidlinux.
* `$Mod + U` - Locks the session using `swaylock`.

### Customization

* `$Mod + O` - Opens the theme selector.
* `$Mod + P` - Opens the wallpaper selector.

### Window Management

The default Sway navigation bindings are kept:

* `$Mod + Arrow Keys` - Move focus between windows.
* `$Mod + Shift + Arrow Keys` - Move windows around.
* `$Mod + 1-9` - Switch workspaces.
* `$Mod + Shift + 1-9` - Move the focused window to another workspace.
* `$Mod + F` - Toggle fullscreen mode.
* `$Mod + Shift + Space` - Toggle floating mode.
* `$Mod + Space` - Switch focus between tiled and floating windows.

### Layouts

* `$Mod + B` - Split windows horizontally.
* `$Mod + V` - Split windows vertically.
* `$Mod + S` - Enable stacking layout.
* `$Mod + T` - Enable tabbed layout.
* `$Mod + E` - Toggle split layout.

### Resize Mode

* `$Mod + R` - Enter resize mode.
* Arrow keys can then be used to resize windows.
* `Enter` or `Escape` returns to the default mode.

### Media Controls

The following hardware key bindings are included:

* Volume up/down
* Volume mute
* Microphone mute
* Brightness up/down

These require:

* `pactl` for audio controls.
* `brightnessctl` for brightness controls.

### Screenshots

Screenshot utilities are provided using:

* `grim` for capturing screenshots.
* `slurp` for selecting regions.
* `wl-clipboard` for copying images to the clipboard.

Bindings:

* `$Mod + C` - Takes a selected-area screenshot and copies it to the clipboard.
* `$Mod + Z` - Takes a fullscreen screenshot and copies it to the clipboard.
* `$Mod + X` - Extracts text from a selected screenshot using Tesseract OCR and copies it to the clipboard.

### Reload and Exit

* `$Mod + Shift + C` - Reloads the Sway configuration.
* `$Mod + Shift + E` - Exits the Sway session.

