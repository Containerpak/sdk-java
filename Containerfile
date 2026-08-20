FROM ghcr.io/containerpak/base-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends openjdk-25-jdk-headless && \
    ln -s "$(dirname "$(dirname "$(readlink -f /usr/bin/javac)")")" /opt/jdk && \
    cpak-clean-junk
