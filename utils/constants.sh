#!/bin/bash

# Absolute path to this project root, e.g. /Users/a.boehm/dev/tools/macos
PROJECT_ROOT="$(
  cd -P "$(dirname "${filename}")/.."
  pwd
)"
