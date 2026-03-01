#!/usr/bin/env bash
# McFly
export MCFLY_DELETE_WITHOUT_CONFIRM=true

# FZF
export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git"
export MCFLY_FUZZY=2
export MCFLY_RESULTS=20
export MCFLY_PROMPT="?"
export MCFLY_LIGHT=FALSE

# oneshot
export OS_CONFIG_ENV_FILE=/home/fritz/.config/fabric/.env
export OS_CONFIG_PATTERN_DIR=/home/fritz/.config/fabric/patterns
export OS_PATTERN_TEMPLATE_DIR=/home/fritz/Sync/FritzSync/patterns
export OS_MARKDOWN_BASE_DIR=/home/fritz/Sync/
export OS_MARKDOWN_VAULT_DIR_1=FritzSync/private
export OS_MARKDOWN_VAULT_DIR_2=BubaFritzShare/private
