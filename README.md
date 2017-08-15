# Dockerfile library

## Build the ubuntu-base

    docker build -t ubuntu-base -f base.docker .

## Build python-docker

    docker build -t python-docker -f python.docker .

## Run python-docker image

    docker run -it --privileged python-docker /bin/bash

## Docker run command

    docker run -p 8000:8000 -v /Users/senthil/github/orsenthil/flask100:/root/flask100 -it --privileged python-docker /bin/bash
