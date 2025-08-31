# Kloud • Base Image

> 📦 **Minimal Debian layer** that underpins *every* KloudKIT container

[![Stars](https://img.shields.io/github/stars/kloudkit/base-image?style=for-the-badge&logo=git&logoColor=c6d0f5&labelColor=414559&color=f0c6c6)](https://github.com/kloudkit/base-image/stargazers)
[![Docker](https://img.shields.io/badge/latest-a?style=for-the-badge&logo=docker&logoColor=c6d0f5&label=docker&labelColor=414559&color=ef9f76)](https://github.com/kloudkit/base-image/pkgs/container/base-image)
[![Build](https://img.shields.io/github/actions/workflow/status/kloudkit/base-image/build.yaml?style=for-the-badge&logo=githubactions&logoColor=c6d0f5&label=build&labelColor=414559&color=a6da95)](https://github.com/kloudkit/base-image/actions/workflows/build.yaml)
[![License](https://img.shields.io/github/license/kloudkit/base-image?style=for-the-badge&logo=opensourceinitiative&logoColor=c6d0f5&labelColor=414559&color=8caaee)](https://github.com/kloudkit/base-image/blob/main/LICENSE)

---

```sh
# TL;DR  🐳 grab the latest layer
docker pull ghcr.io/kloudkit/base-image:latest
```

Use it as the first `FROM` in any KloudKIT-compatible Dockerfile:

```dockerfile
FROM ghcr.io/kloudkit/base-image:latest
# …install your app here…
```

## What's Inside

This ultra-minimal base layer provides:

- **Size-optimized Debian** with aggressive cleanup configurations.
- **Essential tools** like `curl`, `wget`, `gnupg`, and `unzip` pre-installed.
- **Smart package management** that blocks unnecessary services by default.
- **Multi-version support** with opt-in access to newer Debian releases.
- **Security hardening** with sensible defaults for container environments.
- **User setup** with a non-root `kloud` user ready for your applications.

## Why Use This Base

- **Smaller images:** Extensive file exclusions and package filtering reduce bloat.
- **Faster builds:**Common tools pre-installed, optimized APT configuration.
- **Consistent foundation:** All KloudKIT projects start from the same reliable base.
- **Flexible packaging:** Access to both stable and testing repositories when needed.
- **Production ready:** Battle-tested configurations used across KloudKIT infrastructure.

## Getting Started

The base image includes everything needed for most containerized applications.
Simply extend it with your application-specific requirements:

```dockerfile
FROM ghcr.io/kloudkit/base-image:latest

# Install your application dependencies
RUN apt-get update && apt-get install -y your-packages

# Copy and configure your application
COPY . /app
WORKDIR /app

# Switch to non-root user
USER kloud
```

## License

Released under the [**MIT License**](https://github.com/kloudkit/base-image/blob/main/LICENSE)
