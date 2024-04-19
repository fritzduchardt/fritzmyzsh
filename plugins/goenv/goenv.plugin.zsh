#!/usr/bin/env bash
# Goenv
export GOENV_ROOT="$HOME/.goenv"
add_path_entry "$GOENV_ROOT/bin"
eval "$(goenv init -)"
