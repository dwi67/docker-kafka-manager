DOCKER_IMAGE_NAME=dwi67/docker-kafka-manager
DOCKER_IMAGE_VERSION=latest

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
docker build --force-rm=true --rm=true -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .
echo =========================================================================
echo Docker image is ready.  Try it out by running:
echo     docker run -it -p 8080:8080 ${DOCKER_IMAGE_NAME}
echo =========================================================================
