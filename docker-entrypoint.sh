#!/bin/ash

if [ -z "$DJANGO_ALIAS" ]; then
  export DJANGO_ALIAS=django
fi

if [ -z "$DJANGO_PORT" ]; then
  export DJANGO_PORT=8000
fi

if [ -z "$NGINX_PORT" ]; then
  export NGINX_PORT=80
fi

if [ -z "$NGINX_SERVER_NAME" ]; then
  export NGINX_SERVER_NAME=localhost
fi

if [ -z "$NODEJS_ALIAS" ]; then
  export NODEJS_ALIAS=nodejs
fi

if [ -z "$NODEJS_PORT" ]; then
  export NODEJS_PORT=3000
fi

envsubst < /etc/nginx/conf.d/site.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

