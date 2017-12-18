#!/bin/bash

# Open app directory:
cd /usr/src/app/

# Pull current code base from Github
git init
git remote add origin https://github.com/ASE-thingy-blue/thingy-api-blue.git
git pull origin master

# Configure Mailer
sed -i "s/from: \"{MAILFROM}\"/from: \"${MAILFROM}\"/g" backend/mailer.js
sed -i "s/host: \"{MAILHOST}\"/host: \"${MAILHOST}\"/g" backend/mailer.js
sed -i "s/user: \"{MAILUSER}\"/user: \"${MAILUSER}\"/g" backend/mailer.js
sed -i "s/pass: \"{MAILPASS}\"/pass: \"${MAILPASS}\"/g" backend/mailer.js

# Install all dependencies
npm install

# Start the node server
node .
