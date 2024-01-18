# Autocompletion for k9s.
if (( ! $+commands[k9s] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `k9s`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_k9s" ]]; then
  typeset -g -A _comps
  autoload -Uz _k9s
  _comps[k9s]=_k9s
fi

k9s completion zsh >| "$ZSH_CACHE_DIR/completions/_k9s" &|
