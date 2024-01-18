dotfile_location=~/.config
for file in $ZSH_CUSTOM/lib/*.sh; do
    source $file
done

for dir in $ZSH_CUSTOM/plugins/dotfiles/files/*; do
    dest="$dotfile_location"
    lib::exec cp -ur "$dir" "$dest"
done
