FROM nginx:1.13.1-alpine

RUN apk update \
&& apk upgrade \
&& rm -rf /var/cache/apk/*

COPY etc/nginx/conf.d/site.template /etc/nginx/conf.d/site.template

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
