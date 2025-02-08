#!/usr/bin/env bash
# McFly
export MCFLY_DELETE_WITHOUT_CONFIRM=true

# FZF
export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git"
export MCFLY_FUZZY=2
export MCFLY_RESULTS=20
export MCFLY_PROMPT="?"
export MCFLY_LIGHT=TRUE

# K8s
export RPROMPT='%F{blue} $(cluster-info)%f'
