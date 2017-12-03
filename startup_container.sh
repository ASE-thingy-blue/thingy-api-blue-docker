#!/bin/bash
# Pull current code base from Github
git clone https://github.com/ASE-thingy-blue/thingy-api-blue.git

# Navigate to the project folder
cd thingy-api-blue

# Install all dependencies
RUN npm install -g node-gyp
RUN npm install

# Start the node server
node .
