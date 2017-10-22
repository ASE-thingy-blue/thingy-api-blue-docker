#!/bin/bash
#pulls new code from github
git clone https://github.com/ASE-thingy-blue/thingy-api-blue.git

#moves to the project folder
cd thingy-api-blue

#installs all dependencies
npm install --save-dev

#starting the node server
node .
