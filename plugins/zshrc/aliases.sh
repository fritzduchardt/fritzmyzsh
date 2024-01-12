# Misc
alias zshconfig="vim ~/.zshrc"
alias c="xclip -r -sel clip"
alias ch="cat ~/.zsh_history | tail -n2 | head -n1 | perl -pe 's/^.*?;//' | c"
alias rgi="rg -u -i"
alias rm="rm -rf"
alias pwg="pwgen -s -y $((RANDOM %20 + 20)) | cut -f1 | c"
alias aa="alias | fzf"

# Git
alias lg="lazygit"
alias pushmr="git push origin HEAD -o merge_request.create"
alias stashall="ga . && git stash"

# Docker
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"

