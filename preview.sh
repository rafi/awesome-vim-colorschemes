#!/bin/sh

set -euo pipefail
#set -x

if [ $(basename $PWD) != 'awesome-vim-colorschemes' ]; then
  echo >&2 'You must run me inside awesome-vim-colorschemes repo'
  exit 1
fi

example=$(mktemp).cpp
trap "rm -f $example" EXIT

schemes=$(find colors -name \*.vim | xargs -n1 basename | sed 's/\.vim//g')

for s in $schemes; do
  cat > $example <<EOF
// Colorscheme "$s".
// To stop iteration, add ABORT anywhere below and save file.

#include <stdio.h>

namespace XYZ {

static int x = 1;

struct A {
  int x;
  int y;
  void a() const { return x + y; }
};

int main() {
  A var;
  printf("Hello world!\n");
  return 0;
}

}  // XYZ
EOF
  vim +':syntax on' +":set runtimepath+=$PWD" +":colo $s" $example
  if [ $(grep ABORT $example | grep -v 'add ABORT anywhere' | wc -l) -gt 0 ]; then
    echo 'Aborting per user request...'
    break
  fi
done
