#!/bin/bash

# Set permissions
echo "Setting up npm permissions"
chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
echo "Downloading global npm cli's"
npm i -g alfred-npms
npm i -g typescript
npm i -g webpack
npm i -g yarn
