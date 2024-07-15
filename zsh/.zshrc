#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Notes
# -----
# nohup - for detaching processing

# history
HISTFILE=~/.zsh_history

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.envsec"

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
# plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "Aloxaf/fzf-tab"
plug "zsh-users/zsh-syntax-highlighting"

setopt sharehistory


# keybinds
plug "$HOME/.config/zsh/keybinds.zsh"
bindkey '^n' autosuggest-accept

export PATH="$HOME/.local/bin":$PATH

if command -v bat &> /dev/null; then
  alias cat="bat -pp --theme \"Visual Studio Dark+\"" 
  alias catt="bat --theme \"Visual Studio Dark+\"" 
fi

# npm global installs
export PATH=~/.npm-packages/bin:$PATH
export NODE_PATH=~/.npm-packages/lib/node_modules

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# opam configuration
[[ ! -r /home/vaisakh/.opam/opam-init/init.zsh ]] || source /home/vaisakh/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

#tmux on start
#if [ "$TMUX" = "" ]; then tmux; fi

#marker
#[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

# # IntelliShell
# # TODO: install it as nix package, currently
# # install it from https://github.com/lasantosr/intelli-shell 
export INTELLI_HOME='/home/vaisakh/.local/share/intelli-shell'
export INTELLI_SEARCH_HOTKEY=\\C-@
export INTELLI_LABEL_HOTKEY=\\C-p
export INTELLI_BOOKMARK_HOTKEY=\\C-a
export INTELLI_SKIP_ESC_BIND=1
#alias intelli-shell="'$INTELLI_HOME/bin/intelli-shell'"

source "$INTELLI_HOME/bin/intelli-shell.sh"


eval "$(starship init zsh)"
eval "$(direnv hook zsh)"


