#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export PATH="$HOME/.local/bin":$PATH
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export PATH=$HOME/.cargo/bin:$PATH
#export PATH=$HOME/.local/share/go/bin:$PATH
#export GOPATH=$HOME/.local/share/go
#export PATH=$HOME/.fnm:$PATH
export PATH="$HOME/.local/share/neovim/bin":$PATH
export XDG_CURRENT_DESKTOP="Wayland"
#export PATH="$PATH:./node_modules/.bin"
#eval "$(fnm env)"
eval "$(zoxide init zsh)"
# eval "`pip completion --zsh`"
 

# Turso
export PATH="/home/vaisakh/.turso:$PATH"

 
export LANG=en_IN.UTF-8 #for fixing tmux issue

#fcd for switching directry with fzf
export FZF_DEFAULT_COMMAND='fd --color=always --type file --follow --hidden --exclude .git'
#export FZF_DEFAULT_COMMAND='fd'
export FZF_DEFAULT_OPTS="--ansi"

fcd() {
  local target;
  target="$(fzf)" || return; 
  cd "${target%/*}";
}

function yd() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
