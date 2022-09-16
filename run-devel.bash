#!/bin/bash

IMAGE=devel-foxy

# X Server configuration
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
touch ${XAUTH}
xauth nlist ${DISPLAY} | sed -e 's/^..../ffff/' | xauth -f ${XAUTH} nmerge -

docker build -f Dockerfile -t ${IMAGE} .

docker run -it \
    --rm \
    --volume $(pwd)/home:/home/docker \
    --user=docker \
    --privileged \
    --volume=${XSOCK}:${XSOCK}:rw \
    --volume=${XAUTH}:${XAUTH}:rw \
    --env="XAUTHORITY=${XAUTH}" \
    --env="DISPLAY" \
    --name ${IMAGE}-container ${IMAGE}
