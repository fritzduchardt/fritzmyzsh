#!/usr/bin/env bash

# etcd
# member list
alias etcdml="ETCDCTL_API=3 etcdctl member list"

# Git
alias lg="lazygit"
alias pushmr="git push origin HEAD -o merge_request.create"
alias stashall="ga . && git stash"

# docker
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias dims="docker images"

# journalctl
alias jc="journalctl"
alias jcu="journalctl -u"
alias jcuf="journalctl -f -u"

# ls
alias l='ls -lFh'          #size,show type,human readable
alias la='ls -lAFh'        #long list,show almost all,show type,human readable
alias lr='ls -tRFh'        #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'        #long list,sorted by date,show type,human readable
alias ll='ls -l'           #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

# misc
alias zshconfig="vim ~/.zshrc"
alias c="xclip -r -sel clip"
alias ch="cat ~/.zsh_history | tail -n2 | head -n1 | perl -pe 's/^.*?;//' | c"
alias rgi="rg -u -i"
alias rm="rm -rf"
alias pwg="pwgen -s -y "$((RANDOM %20 + 20))" | cut -f1 | c"
alias fzf="fzf --ansi"
alias aa="alias | fzf"
alias rg="rg -i"
alias fd="fd --hidden --exclude .git"
alias space="du --max-depth=1 -h | sort -r -h"
alias cat="bat"
alias nctl="nerdctl"
alias cpath="echo $PATH | c"

# myks
alias ma="myks apply"
alias mr="myks render"
alias maa="myks all"

# nc
alias ncl="nc -v 127.0.0.1"

# ss
alias ss="ss -tlpn"
