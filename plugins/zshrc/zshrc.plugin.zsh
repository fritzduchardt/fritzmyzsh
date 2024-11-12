#!/usr/bin/zsh
# source all files in directory
for file in $ZSH_CUSTOM/lib/*.sh; do
    source "$file"
done

for file in $ZSH_CUSTOM/plugins/zshrc/*.sh; do
    source "$file"
done
