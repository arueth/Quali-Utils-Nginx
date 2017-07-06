#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/.config.setup

docker container run \
        -d \
        -e DJANGO_ALIAS=${DJANGO_ALIAS}.${NETWORK} \
        -e DJANGO_PORT=${DJANGO_PORT} \
        -e NGINX_PORT=${NGINX_PORT} \
        -e NGINX_SERVER_NAME=${NGINX_SERVER_NAME} \
        -e NODEJS_ALIAS=${NODEJS_ALIAS}.${NETWORK} \
        -e NODEJS_PORT=${NODEJS_PORT} \
        --name ${CONTAINER_NAME} \
        --network ${NETWORK} \
        -p 80:${NGINX_PORT} \
        ${IMAGE_NAME}:${IMAGE_TAG}
