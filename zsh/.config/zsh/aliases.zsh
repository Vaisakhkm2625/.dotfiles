# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


alias lazyvim='NVIM_APPNAME=Lazyvim nvim' 
alias lazyvimnix='NVIM_APPNAME=Lazyvim steam-run nvim'
alias lv='lazyvim'
alias v='nvim'
#alias vi='nvim'
alias vi='lazyvim'
alias r='ranger'
alias rd='. ranger'

alias open='xdg-open'

# lsv for clickable links
alias lsv='/bin/ls --hyperlink=auto --color=auto'

alias qrpaste="wl-paste | qrencode -t utf8"

#neovide wayland workaround
# alias neovide="WINIT_UNIX_BACKEND=x11 snap run neovide"
# alias neovide="WINIT_UNIX_BACKEND=x11 neovide"


ssh() {
  if [ "$TERM" = "xterm-kitty" ]; then
    kitty +kitten ssh "$@"
  else
    ssh "$@"
  fi
}
