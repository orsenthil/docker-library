# Dockerfile library

## Build the ubuntu-base

    docker build -t ubuntu-base -f base.docker .

## Build python-docker

    docker build -t python-docker -f python.docker .

## Run python-docker image

    docker run -it --privileged python-docker /bin/bash
