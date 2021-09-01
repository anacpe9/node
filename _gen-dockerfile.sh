#!/bin/sh

sed "s/%%IMAGE_VERSION%%/$IMAGE_VERSION/g" Dockerfile.template > dist/Dockerfile
sed "s/%%REGISTRY_IMAGE%%:%%IMAGE_VERSION%%/${REGISTRY_IMAGE//\//\\/}:$IMAGE_VERSION/g" Dockerfile.builder.template > dist/Dockerfile.builder
# https://stackoverflow.com/questions/584894/environment-variable-substitution-in-sed
