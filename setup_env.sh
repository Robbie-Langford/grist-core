#!/bin/bash

set -x

# Setup Node.js using nvm
nvm install
npm install -g yarn
nvm use

# Install Python Packages
apt update
apt install python3.9-venv

# Install Node.js and Python Dependencies and Build
yarn install
yarn install:python
yarn run build:prod

# Start the Server in Development Mode
yarn start