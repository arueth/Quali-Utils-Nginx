#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/.config.setup

docker container rm --force ${CONTAINER_NAME}
