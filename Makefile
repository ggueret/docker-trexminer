build:
	docker build -t ggueret/docker-trexminer:ubuntu .

shell:
	docker run --rm -ti --entrypoint /bin/bash ggueret/docker-trexminer:ubuntu
