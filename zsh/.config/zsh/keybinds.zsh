
# Define a function to run the last command with sudo
sudo_last_command() {
  if (( $# == 0 )); then
    eval "sudo $(fc -ln -1)"
  else
    eval "sudo $@"
  fi
}

# Bind the function to a key combination
bindkey '^k' sudo_last_command
bindkey '^n' autosuggest-accept
