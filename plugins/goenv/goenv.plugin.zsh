#!/usr/bin/env bash
echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.zshrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(goenv init -)"' >> ~/.zshrc
export GOPATH="$HOME"/go
export GOROOT=/usr/local/go
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.zshrc
