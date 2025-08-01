ARG tag=12.11

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
  && apt-get satisfy -y --no-install-recommends \
    "locales" \
  && locale-gen \
  && apt-get satisfy -y --no-install-recommends \
    "ca-certificates (>=20230311)" \
    "curl (>=7.88)" \
    "gnupg (>=2.2)" \
    "unzip (>=6.0)" \
    "wget (>=1.21)" \
    "zsh (>=5.9)" \
  && rm -rf /var/lib/apt/lists/*

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
