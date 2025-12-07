#!/bin/bash

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `myks`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_task" ]]; then
  typeset -g -A _comps
  autoload -Uz _task
  _comps[task]=_task
fi

task --completion zsh 2>/dev/null >| "$ZSH_CACHE_DIR/completions/_task" &|
