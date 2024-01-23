dotfile_config_location=~/.config
dotfile_location=~/
for file in $ZSH_CUSTOM/lib/*.sh; do
    source $file
done

# Copy dot files
for file in $ZSH_CUSTOM/plugins/dotfiles/.*rc; do
    lib::exec cp -f "$file" "$dotfile_location"
done

# Copy config files to home directory
for dir in $ZSH_CUSTOM/plugins/dotfiles/files/*; do
    lib::exec cp -ur "$dir" "$dotfile_config_location"
done
