FROM node:16.13.1-alpine
LABEL maintainer="Anucha Nualsi <ana.cpe9@gmail.com>"

ENV NODE_TLS_REJECT_UNAUTHORIZED=0 \
  NODE_ENV=production \
  NO_COLOR=true \
  PATH="${PATH}:/app/node_modules/.bin" \
  LANG=th_TH.utf8 \
  LANGUAGE=th_TH.utf8 \
  LC_CTYPE=th_US.utf8 \
  LC_ALL=th_TH.utf8

RUN apk update --no-cache \
  && apk add --no-cache --update tzdata \
  && cp /usr/share/zoneinfo/Asia/Bangkok /etc/localtime \
  && echo "Asia/Bangkok" >  /etc/timezone \
  && apk del tzdata \
  && npm cache clean --force \
  && mkdir -p /usr/src/app \
  && mkdir -p /app \
  && rm -rf /tmp/* \
  && rm -rf /var/tmp/* \
  && rm -rf /var/cache/apk/*
