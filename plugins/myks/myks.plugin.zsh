# Autocompletion for myks.
if (( ! $+commands[myks] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `myks`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_myks" ]]; then
  typeset -g -A _comps
  autoload -Uz _myks
  _comps[myks]=_myks
fi

myks completion zsh 2>/dev/null >| "$ZSH_CACHE_DIR/completions/_myks" &|

# myks
alias ma="myks apply"
alias mr="myks render"
alias maa="myks all"
alias m="myks"

