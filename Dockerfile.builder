FROM registry.gitlab.com/dtac-receipt-hub/node:16.13.1-alpine
LABEL maintainer="Anucha Nualsi <ana.cpe9@gmail.com>"

ENV NODE_TLS_REJECT_UNAUTHORIZED=0 \
  NODE_ENV=development

WORKDIR /app
RUN apk update --no-cache \
  && apk add --no-cache --update --virtual .build-deps make gcc g++ python3 busybox-extras postgresql-client \
  && rm -rf /tmp/* \
  && rm -rf /var/tmp/* \
  && rm -rf /var/cache/apk/*