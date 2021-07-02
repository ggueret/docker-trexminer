TREX_RELEASE ?= 0.20.4

build:
	docker build --build-arg TREX_RELEASE=${TREX_RELEASE} -t ggueret/trexminer:${TREX_RELEASE}_ubuntu .

shell:
	docker run --rm -ti --entrypoint /bin/bash ggueret/docker-trexminer:ubuntu
