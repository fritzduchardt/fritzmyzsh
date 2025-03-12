help() {
  local cmd="$1"
  $cmd --help | fzf -e
}
