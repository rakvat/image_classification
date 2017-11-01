IMAGE=image_classifier
VERSION=1

RETRAIN_IMAGE=retrained_image_classifier
RETRAIN_VERSION=1

build:
	docker build -f Dockerfile\
		-t ${IMAGE} \
		-t ${IMAGE}:${VERSION} \
		.

build_retrained:
	docker build -f DockerfileRetrain\
		-t ${RETRAIN_IMAGE} \
		-t ${RETRAIN_IMAGE}:${RETRAIN_VERSION} \
		.
