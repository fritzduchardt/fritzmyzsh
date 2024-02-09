#!/usr/bin/env bash
export GOENV_ROOT="$HOME/.goenv"
add_path_entry "$GOENV_ROOT/bin"
eval "$(goenv init -)"
mkdir -p "$GOPATH/bin"
add_path_entry "$GOROOT/bin"
add_path_entry "$GOPATH/bin"
