FROM node:8.7

MAINTAINER salim@hermidas.ch

ENV appdir /usr/src/app/
RUN mkdir -p $appdir
WORKDIR $appdir

# Combine RUN apt-get update with apt-get install in the same RUN statement to avoid caching issues (https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/)
RUN apt-get update
RUN apt-get install -y git build-essential
RUN apt-get clean

# Pull current code base from Github
RUN git clone https://github.com/ASE-thingy-blue/thingy-api-blue.git

# Navigate to the project folder
WORKDIR $appdir/thingy-api-blue

# Install all dependencies
RUN npm install -g node-gyp
RUN npm install

EXPOSE 8080

# Drop privileges according to Docker and Node.js Best Practices (https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md)
USER node

# Start the node server
CMD ["node", "."]
