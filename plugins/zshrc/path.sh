#!/usr/bin/env bash
add_path_entry "$HOME/.krew/bin"
add_path_entry "/usr/sbin"
add_path_entry "$HOME/projects/github/k8s-admin-shell/"
add_path_entry "$HOME/projects/github/myks/bin"
add_path_entry "$HOME/ollama/bin"
log::debug "PATH: $PATH"
