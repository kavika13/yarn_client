#!/bin/bash
echo "Note: You must run 'source $BASH_SOURCE' for this script to work"

# See: http://stackoverflow.com/a/18443300/232593
realpath() {
  OURPWD=$PWD
  cd "$(dirname "$1")"
  LINK=$(readlink "$(basename "$1")")
  while [ "$LINK" ]; do
    cd "$(dirname "$LINK")"
    LINK=$(readlink "$(basename "$1")")
  done
  REALPATH="$PWD/$(basename "$1")"
  cd "$OURPWD"
  echo "$REALPATH"
}

alias brunch=$(realpath $(git rev-parse --show-cdup)node_modules/brunch/bin/brunch)
alias bower=$(realpath $(git rev-parse --show-cdup)node_modules/bower/bin/bower)
