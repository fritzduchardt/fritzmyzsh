#!/usr/bin/env bash
# shellcheck disable=SC2142

# ansible
alias ap=ansible-playbook

# docker
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias dims="docker images"
alias ddebug='docker run -u $(id -u):$(id -g) -it -v $(pwd):/work --rm --entrypoint sh'
alias ddebugroot='docker run -it -v $(pwd):/work --rm --entrypoint sh'

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
alias amend="ga . && gc! --no-edit && ggpush -f"
alias gconfig="git config pull.rebase true"

# Home automation
alias ha_config="/home/fritz/projects/github/lab-ansible/scripts/ip_tables.sh"

# ip
# show ips and not much else
alias ips="ip -4 -o addr show scope global | awk '{print \$2, \$4}' | cut -d/ -f1"

# journalctl
alias jc="journalctl"
alias jcu="journalctl -u"
alias jcuf="journalctl -f -u"

# kubectl
alias kcns="k create ns"
alias k="kubecolor"
alias ns="k ns"
# ls
alias l='ls -lFh'                #size,show type,human readable
alias la='ls -lAFh'              #long list,show almost all,show type,human readable
alias lat='ls -lAFht'            #long list,show almost all,show type,human readable
alias lt='ls -ltFh'              #long list,sorted by date,show type,human readable
alias ll='ls -l'                 #long list
alias ldot='ls -ld .*'           # List dot files
alias lS='ls -1FSsh'             # List files in a single column, sorted by size
alias ltc='ls -lhtc'             # List files sorted by modification time
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
alias fd="fd --no-ignore --hidden --exclude .git"
alias space="du --max-depth=1 -h | sort -r -h"
alias nctl="nerdctl"
alias cpath="echo \$PATH | c"
alias ckube="echo \$KUBECONFIG | c"
alias s="switch"
alias v="vim -"
alias pc="pwd | c"
alias x="chmod +x"
alias e="env | rg"
alias trace="export LOG_LEVEL=trace"
alias notrace="unset LOG_LEVEL"

# rip grep
alias rg="rg -i" # case insensitive
alias rgi="rg -u -i" #  hidden files
alias rgl="rg -l" # list file names containing matches

# nc
alias ncl="nc -v 127.0.0.1"

# sops
alias sopsd="fd '\w+.sops.yaml' -x sops -i -d;" # decrypt all
alias sopse="fd '\w+.sops.yaml' -x sops -i -e;" # encrypt all

# ss
alias ss="ss -tlpn"

# systemctl
alias sc="sudo systemctl"
alias jc="journalctl"

# myks
alias myksdev="myks_render_n_apply"
