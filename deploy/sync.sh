#!/bin/bash

# setting up the node environment
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

echo "starting deployment process"

# download new version of our application
cd /home/ubuntu/node-api

# install all the dependencies
echo "installing dependencies"
npm install
# build the application
echo "building application"
npm run build

# run the application
echo "starting the application"
pm2 reload ecosystem.config.js

echo "deployment process completed"