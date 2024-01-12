#!/usr/bin/env bash

declare -A LOG_LEVELS
LOG_LEVELS=([TRACE]=0 [DEBUG]=1 [INFO]=2 [WARN]=3 [ERROR]=4 [FATAL]=5)
LOG_LEVEL="${LOG_LEVEL:-info}"
LOG_CONTEXT=""

log::_islevel() {
    local level="${1}"
    local global_level_int=${LOG_LEVELS[${LOG_LEVEL}]}
    local current_level_int=${LOG_LEVELS[$level]}
    ((global_level_int <= current_level_int))
}

log::_logincolor() {
    local paint="$1"
    local level="$2"
    shift 2

    if log::_islevel "$level"; then
        if [[ -n "$LOG_CONTEXT" ]]; then
            echo -e "\033[0;${paint}m$level\033[0m \033[1m[$LOG_CONTEXT]\033[0m $1" >&2
        else
            echo -e "\033[0;${paint}m$level\033[0m $1" >&2
        fi
    fi
}

log::trace() {
    log::_logincolor 35 TRACE "$@" 
}

log::debug() {
    log::_logincolor 34 DEBUG "$@" 
}

log::info() {
    log::_logincolor 32 INFO "$@" 
}

log::warn() {
    log::_logincolor 33 WARN "$@" 
}

log::error() {
    log::_logincolor 31 ERROR "$@" 
}

log::fatal() {
    log::_logincolor 35 FATAL "$@" 
}
