# node

prepare node image to use internal network

- `IMAGE_VERSION=$CI_BUILD_REF_NAME REGISTRY_IMAGE=$CI_REGISTRY_IMAGE ./_gen-dockerfile.sh`
- `IMAGE_VERSION=14-alpine REGISTRY_IMAGE=gitlab.com/dtac-receipt-hub/node ./_gen-dockerfile.sh`
- ```bash
  docker build \
      -t $CI_REGISTRY_IMAGE:$CI_BUILD_REF_NAME \
      -f dist/Dockerfile \
      .
  ```
- ```bash
  docker build \
      -t $CI_REGISTRY_IMAGE:$CI_BUILD_REF_NAME-builder \
      -f dist/Dockerfile.builder \
      .
  ```
