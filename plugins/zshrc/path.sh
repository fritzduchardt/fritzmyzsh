#!/usr/bin/env bash
add_path_entry "$HOME/bin"
add_path_entry "$HOME/go/bin"
add_path_entry "$HOME/.krew/bin"
add_path_entry "/usr/local/go/bin"
log::debug "PATH: $PATH"
