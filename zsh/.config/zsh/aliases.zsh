# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias pyt='nix-shell -p python311 --command python'



alias lazyvim='NVIM_APPNAME=Lazyvim nvim' 
alias lazyvimnix='NVIM_APPNAME=Lazyvim steam-run nvim'
alias lv='lazyvimnix'
alias v='nvim'
#alias vi='nvim'
alias vi='lazyvim'
alias r='yazi'
alias rd='yd'

alias open='xdg-open'

# lsv for clickable links
alias lsv='/bin/ls --hyperlink=auto --color=auto'

alias qrpaste="wl-paste | qrencode -t utf8"

# helpful utils
alias ils='timg --grid=2x1 --upscale=i --center --title --frames=1 '

#neovide wayland workaround
# alias neovide="WINIT_UNIX_BACKEND=x11 snap run neovide"
# alias neovide="WINIT_UNIX_BACKEND=x11 neovide"

# fixes
alias fix_xremap="pkill xremap;nohup xremap ~/.config/xremap/config.yml --watch=config &"




ssh() {
  if [ "$TERM" = "xterm-kitty" ]; then
    kitty +kitten ssh "$@"
  else
    ssh "$@"
  fi
}
