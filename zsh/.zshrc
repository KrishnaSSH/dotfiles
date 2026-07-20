# https://github.com/krishnassh/dotfiles
# Author: KrishnaSSH
# LICENSE: CC0 1.0 Universal
# You may get a copy of this license from https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

export PATH="$HOME/.local/bin:$PATH"
# Source - https://stackoverflow.com/a/71271754
# Posted by user18295742, modified by community. See post 'Timeline' for change history
# Retrieved 2026-07-20, License - CC BY-SA 4.0

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# autocd and a case insensitive autocomplete   
setopt autocd
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# History file
# This is where your zsh history will be.
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.local/share/zsh_history"

# This is where your alias should be
# mkdir -p ~/.config/shell && touch ~/.config/shell/aliasrc
source ~/.config/shell/aliasrc

# vim bindings in shell 
bindkey -v

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Plugins
# Install it from your package manager or directly clone them to this path and source it
# Default paths may vary depending on the distribution
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

