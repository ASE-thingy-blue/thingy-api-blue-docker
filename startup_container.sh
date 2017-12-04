#!/bin/bash

#clean all:
rm -rf /usr/src/app/
mkdir /usr/src/app/
cd /usr/src/app/

# Pull current code base from Github
git init
git remote add origin https://github.com/ASE-thingy-blue/thingy-api-blue.git
git pull origin master

# Install all dependencies
npm install -g node-gyp
npm install

# Start the node server
node .
