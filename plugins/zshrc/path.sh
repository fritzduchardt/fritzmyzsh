typeset -TUx PATH path

path=("$HOME/.krew/bin" "${path[@]}")
path=("$HOME/bin" "${path[@]}")
log::debug "PATH: $PATH"
