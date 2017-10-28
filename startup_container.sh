#!/bin/bash
# Pull current code base from Github
git clone https://github.com/ASE-thingy-blue/thingy-api-blue.git

# Navigate to the project folder
cd thingy-api-blue

# Install all dependencies
npm install --save-dev

# Start the node server
node . -prod
