ARG tag=12.12

################################## Base Layer ##################################

FROM debian:${tag}
SHELL ["/bin/bash", "-Eeuo", "pipefail", "-c"]

ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN mkdir -p /etc/apt/keyrings

COPY src/rootfs /

### Install helper requirements
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y --no-install-recommends \
    locales \
  && locale-gen \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    gnupg \
    unzip \
    wget \
    xz-utils \
    zsh \
  && /usr/libexec/kloudkit/apt-cleanup

### Add docker group and application user
RUN groupadd \
    --gid 990 \
    docker \
  && adduser \
    --disabled-password \
    --no-create-home \
    --gecos '' \
    --shell /usr/bin/zsh \
    --uid 1000 \
    kloud \
  && usermod \
    --append \
    --groups docker \
    kloud
