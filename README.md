# Node.JS Thingy Web API Docker Image

This project is based on the official node 8.7 image on which we install git to pull the code directly from [Thingy Web API](https://github.com/ASE-thingy-blue/thingy-api-blue) into the container. This is done by the startup_container.sh bash script.
The image is built on [Dockerhub](https://hub.docker.com/r/aseteamblue/thingy-api-blue-docker/).

### What is the advantage over a conservative image?
Normaly you build an new image every time you change something in the code to always work with the newest version in your container. As already said, this includes rebuilding (on Dockerhub) the image for each change that is done in the code.

Sometimes you forget to use the build function on docker and so still start the container with the old locally saved version.

With this workflow this does not happen: The image just has to be built once and if you want to have the newest version you just restart the container.
That saves a lot of building time and also nerves of inexperienced developers.
