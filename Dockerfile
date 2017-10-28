FROM node:8.7

MAINTAINER salim@hermidas.ch

ENV appdir /usr/src/app/
RUN mkdir -p $appdir
WORKDIR $appdir

RUN apt-get update
RUN apt-get install -y git
RUN apt-get clean

COPY startup_container.sh startup.sh

EXPOSE 8080

RUN ["chmod", "+x", "/usr/src/app/startup.sh"]

# Drop privileges according to Docker and Node.js Best Practices (https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md)
USER node

CMD ["/usr/src/app/startup.sh"]
