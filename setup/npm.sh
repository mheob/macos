#!/bin/bash

# Install latest node via nvm
echo "Install latest node via nvm"
nvm install node

# Install commonly used cli's and tools
echo "Downloading global npm cli's and tools"
npm i -g \
  alfred-fkill \
  alfred-hl \
  alfred-mdn \
  alfred-npms \
  corepack \
  cz-conventional-changelog \
  fkill-cli \
  gitmoji-cli \
  netlify-cli \
  npm
