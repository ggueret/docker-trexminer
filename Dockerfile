FROM nvidia/cuda:11.3.0-runtime-ubuntu20.04
ARG TREX_RELEASE=0.20.3
ENV DEBIAN_FRONTEND noninteractive
ENV LANG C

RUN mkdir /opt/trexminer
WORKDIR /opt/trexminer

ADD https://github.com/trexminer/T-Rex/releases/download/${TREX_RELEASE}/t-rex-${TREX_RELEASE}-linux.tar.gz /tmp/release.tar.gz
RUN tar xvf /tmp/release.tar.gz

ENTRYPOINT [ "/opt/trexminer/t-rex" ]
