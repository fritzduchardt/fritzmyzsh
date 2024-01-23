#!/usr/bin/env bash

add_path_entry() {
  local new_directory="$1"
  if [ -d "$new_directory" ]; then
    # Check if the directory is already in PATH
    if [[ ":$PATH:" != *":$new_directory:"* ]]; then
      # Add the directory to PATH
      export PATH="$new_directory:$PATH"
      return 0
    fi
  else
    log::debug "Directory '$new_directory' does not exist"
    return 1
  fi
}
