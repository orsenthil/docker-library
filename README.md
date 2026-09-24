# Dockerfile library

A collection of small Dockerfiles and examples.

| Directory / file     | What it is                                              |
|----------------------|---------------------------------------------------------|
| `base.docker`        | Ubuntu 24.04 dev base (build tools, Python, MySQL, git) |
| `python.docker`      | Python tooling venv on top of `ubuntu-base`             |
| `docker.simple`      | The simplest Dockerfile (Alpine)                        |
| `amazon-linux/`      | Amazon Linux 2023 shell                                 |
| `clang-docker/`      | Clang + libc++ for C++17                                |
| `curl-docker/`       | curl built from source with HTTP/2                      |
| `figlet/`            | figlet banner generator                                 |
| `flask-docker/`      | Minimal Flask app                                       |
| `python-virtualenv/` | Using a virtualenv inside a Docker image                |
| `teamcity/`          | Script to run a TeamCity server                         |

## Build the ubuntu-base

    docker build -t ubuntu-base -f base.docker .

## Build python-docker

`python.docker` builds on `ubuntu-base`, so build that first.

    docker build -t python-docker -f python.docker .

## Run python-docker image

    docker run -it python-docker

## Mount a local project into python-docker

    docker run -p 8000:8000 -v "$PWD":/root/project -it python-docker

## Build and run the simplest image

    docker build -t simple -f docker.simple .
    docker run -it simple

## Build the amazon-linux

    docker build -t amazon-linux amazon-linux

## Run amazon-linux

    docker run -it amazon-linux

## Build and run figlet

    docker build -t figlet figlet
    docker run --rm figlet "hi there"
