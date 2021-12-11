FROM registry.gitlab.com/dtac-receipt-hub/node:16.13.1-alpine
LABEL maintainer="Anucha Nualsi <ana.cpe9@gmail.com>"

ENV NODE_TLS_REJECT_UNAUTHORIZED=0 \
  NODE_ENV=development

WORKDIR /app
RUN apk update --no-cache \
  && apk add --no-cache --update --virtual .build-deps make gcc g++ python3 busybox-extras postgresql-client \
  && npm install -g npm@8.3.0 \
  && npm install -g yarn@1.22.17 \
  && npm cache clean --force \
  && rm -rf /tmp/* \
  && rm -rf /var/tmp/* \
  && rm -rf /var/cache/apk/*
