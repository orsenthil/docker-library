#!/bin/bash
set -euo pipefail

PATH_TO_DATA_DIR="${PATH_TO_DATA_DIR:-$HOME/teamcity/data}"
PATH_TO_LOGS_DIR="${PATH_TO_LOGS_DIR:-$HOME/teamcity/logs}"
PORT_HOST="${PORT_HOST:-8111}"

mkdir -p "$PATH_TO_DATA_DIR" "$PATH_TO_LOGS_DIR"

docker run -it --rm --name teamcity-server-instance \
    -v "$PATH_TO_DATA_DIR":/data/teamcity_server/datadir \
    -v "$PATH_TO_LOGS_DIR":/opt/teamcity/logs \
    -p "$PORT_HOST":8111 \
    jetbrains/teamcity-server
