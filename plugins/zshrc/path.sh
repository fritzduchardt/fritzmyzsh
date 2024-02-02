#!/usr/bin/env bash
add_path_entry "$HOME/bin"
add_path_entry "$HOME/go/bin"
add_path_entry "$HOME/.krew/bin"
add_path_entry "/usr/local/go/bin"
add_path_entry "/usr/sbin"
add_path_entry "$HOME/projects/github/k8s-admin-shell/"
log::debug "PATH: $PATH"
