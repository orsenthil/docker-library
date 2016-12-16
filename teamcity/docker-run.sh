#!/bin/bash

PATH_TO_DATA_DIR=/Users/senthil/teamcity/data
PATH_TO_LOGS_DIR=/Users/senthil/teamcity/logs
PORT_HOST=8111

docker run -it --name teamcity-server-instance  \
    -v $PATH_TO_DATA_DIR:/data/teamcity_server/datadir \
    -v $PATH_TO_LOGS_DIR:/opt/teamcity/logs  \
    -p $PORT_HOST:8111 \
    jetbrains/teamcity-server
