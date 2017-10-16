FROM node:8.7

MAINTAINER salim@hermidas.ch

ENV appdir /usr/src/app/
RUN mkdir -p $appdir
WORKDIR $appdir

RUN apt-get update
RUN apt-get install -y git
RUN apt-get clean

RUN git init
RUN git remote add origin https://github.com/ASE-thingy-blue/thingy-api-blue.git
RUN git pull origin master

RUN npm install

EXPOSE 8080

CMD ["node", "."]
