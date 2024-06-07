#!/bin/sh
docker build -t ventoybuilder . && echo "Image ventoybuilder build" || echo "Couldn't build ventoybuilder"
docker run -it --rm --name ventoybuilder --privileged -v "$(pwd):/ventoy" ventoybuilder ./docker_build.sh CI
