## Tmux

This configuration uses a custom prefix key instead of the default `Ctrl + B`.
The default prefix is changed to `Alt + O` because I think it's easier to reach and more intuitive.

### Prefix Key

* `Alt + O` - Activates the tmux prefix key.
* `Alt + O + [` - Enters copy mode with Vim keybindings.

### Pane Management

* `Alt + O + U` - Creates a vertical pane split.
* `Alt + O + I` - Creates a horizontal pane split.

### Pane Navigation

Uses Vim-style navigation:

* `Alt + O + H` - Move to the left pane.
* `Alt + O + J` - Move to the bottom pane.
* `Alt + O + K` - Move to the top pane.
* `Alt + O + L` - Move to the right pane.

### Pane Resizing

Hold `Alt + O` and use:

* `Shift + H` - Resize pane left.
* `Shift + J` - Resize pane down.
* `Shift + K` - Resize pane up.
* `Shift + L` - Resize pane right.

### Copy Mode

Copy mode uses Vim keybindings.

* `v` - Start selection.
* `V` - Select the current line.
* `y` - Copy selection and exit copy mode.

Copied text is sent to the Wayland clipboard using `wl-copy`.

### Mouse Support

Mouse support is enabled, allowing:

* Selecting panes with the mouse.
* Resizing panes with the mouse.
* Scrolling through terminal history.

### Configuration Reload

* `Alt + O + r` - Reloads the tmux configuration.

### Additional Changes

This configuration also includes:

* Window numbering starting from `1`.
* Pane numbering starting from `1`.
* Status bar positioned at the bottom.
* Vim-style copy mode.
* Custom green-on-black status styling.
