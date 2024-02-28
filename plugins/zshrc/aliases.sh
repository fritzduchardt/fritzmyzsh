#!/usr/bin/env bash
# shellcheck disable=SC2142

# docker
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias dims="docker images"

# etcd
# member list
alias etcdml="ETCDCTL_API=3 etcdctl member list"

# find
alias findjpg='find . -iname "*.jpg"'
alias finddirs='find . -type d'
alias findfiles='find . -type f'
alias findperm777='find . -type f -perm 777'
alias findsetuid='find . -xdev \( -perm -4000 \) -type f -print0 | xargs -0 ls -l'
alias findtxtdelete='find ./path/ -name "*.txt" -exec rm {} \;'
alias findtxtstring='find ./path/ -name "*.txt" | xargs grep "string"'
alias findbigsizes='find . -size +5M -type f -print0 | xargs -0 ls -Ssh | sort -z'
alias findmodified7days='find . -type f -mtime +7d -ls'
alias findsymlinks='find . -type l -user <username-or-userid> -ls'
alias deleteemptydirs='find . -type d -empty -exec rmdir {} \;'
alias findbuild='find . -maxdepth 2 -name build -type d'
alias findnotingit='find . ! -iwholename "*.git*" -type f'
alias findsamefile='find . -type f -samefile MY_FILE_HERE 2>/dev/null'
alias modifypermissions='find . -type f -exec chmod 644 {} \;'
alias findyaml='find . -regex ".*\.\(yml\|yaml\)$"'
alias createdlast20mins='find . -cmin -20'
alias createdlast2days='find . -ctime +1'
alias findmultiplepaths='find [path-a] [path-b] -type f'
alias findandremovepyc='find . -name "*.pyc" -exec rm -rf {} \;'

# git
alias lg="lazygit"
alias pushmr="git push origin HEAD -o merge_request.create"
alias stashall="ga . && git stash"
alias rmlock="rm .git/index.lock"

# ip
# show ips and not much else
alias ips="ip -4 -o addr show scope global | awk '{print \$2, \$4}' | cut -d/ -f1"

# journalctl
alias jc="journalctl"
alias jcu="journalctl -u"
alias jcuf="journalctl -f -u"

# kubectl
alias kns="kubectl config set-context --current --namespace "

# ls
alias l='ls -lFh'       #size,show type,human readable
alias la='ls -lAFh'     #long list,show almost all,show type,human readable
alias lt='ls -ltFh'     #long list,sorted by date,show type,human readable
alias ll='ls -l'        #long list
alias ldot='ls -ld .*'  # List dot files
alias lS='ls -1FSsh'    # List files in a single column, sorted by size
alias ltc='ls -lhtc'    # List files sorted by modification time
alias latn='ls -lat | head -n20' # List most recent files
# misc
alias zshconfig="vim ~/.zshrc"
alias c="xclip -r -sel clip"
alias ch="cat ~/.zsh_history | tail -n2 | head -n1 | perl -pe 's/^.*?;//' | c"
alias ld="lazydocker"
alias rm="rm -rf"
alias pwg="pwgen -s -y "$((RANDOM % 20 + 20))" | cut -f1 | c"
alias fzf="fzf --ansi"
alias aa="alias | fzf"
alias rg="rg -i"
alias fd="fd --no-ignore --hidden --exclude .git"
alias space="du --max-depth=1 -h | sort -r -h"
alias cat="bat"
alias nctl="nerdctl"
alias cpath="echo \$PATH | c"
alias ckube="echo \$KUBECONFIG | c"
alias s="switch"
alias v="vim -"

# ripgrep
alias rgi="rg -u -i"
alias rgl="rg -l" #list files containing matches

# nc
alias ncl="nc -v 127.0.0.1"

# ss
alias ss="ss -tlpn"
