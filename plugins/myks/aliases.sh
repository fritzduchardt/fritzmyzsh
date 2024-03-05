#!/usr/bin/env bash

myks_render_n_apply() {
  local env="$1"
  local app="$2"
  myks render "$env" "$app"
  myks apply "$env" "$app"
}
# myks
alias ma="myks apply"
alias mr="myks render"
alias ms="myks sync"
alias maa="myks all"
alias mA="myks_render_n_apply"
alias m="myks"
