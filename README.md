# Kloud • Base Image

> 📦 **Minimal Debian layer** that underpins *every* KloudKIT container

[![Stars](https://img.shields.io/github/stars/kloudkit/base-image?style=for-the-badge&logo=git&logoColor=c6d0f5&labelColor=414559&color=f0c6c6)](https://github.com/kloudkit/base-image/stargazers)
[![Docker](https://img.shields.io/badge/v0.0.5-a?style=for-the-badge&logo=docker&logoColor=c6d0f5&label=docker&labelColor=414559&color=ef9f76)](https://github.com/kloudkit/base-image/pkgs/container/base-image)
[![Build](https://img.shields.io/github/actions/workflow/status/kloudkit/base-image/build.yaml?style=for-the-badge&logo=githubactions&logoColor=c6d0f5&label=build&labelColor=414559&color=a6da95)](https://github.com/kloudkit/base-image/actions/workflows/build.yaml)
[![License](https://img.shields.io/github/license/kloudkit/base-image?style=for-the-badge&logo=opensourceinitiative&logoColor=c6d0f5&labelColor=414559&color=8caaee)](https://github.com/kloudkit/base-image/blob/main/LICENSE)

---

```sh
# TL;DR  🐳 grab the latest layer (Bookworm by default)
docker pull ghcr.io/kloudkit/base-image:latest

# Or choose a specific Debian version
docker pull ghcr.io/kloudkit/base-image:bookworm  # Debian 12
docker pull ghcr.io/kloudkit/base-image:trixie    # Debian 13
```

Use it as the first `FROM` in any KloudKIT-compatible Dockerfile:

```dockerfile
FROM ghcr.io/kloudkit/base-image:latest
# …install your app here…

# Or target a specific version
FROM ghcr.io/kloudkit/base-image:bookworm
```

## What's Inside

This ultra-minimal base layer provides:

- **Size-optimized Debian** with aggressive cleanup configurations.
- **Essential tools** like `curl`, `wget`, `gnupg`, and `unzip` pre-installed.
- **Smart package management** that blocks unnecessary services by default.
- **Multiple Debian versions** with dedicated Bookworm and Trixie variants.
- **Multi-architecture support** with ARM64 and AMD64 builds for broad compatibility.
- **Security hardening** with sensible defaults for container environments.
- **User setup** with a non-root `kloud` user ready for your applications.

## Why Use This Base

- **Smaller images:** Extensive file exclusions and package filtering reduce bloat.
- **Faster builds:** Common tools pre-installed, optimized APT configuration.
- **Consistent foundation:** All KloudKIT projects start from the same reliable base.
- **Version flexibility:** Choose between stable Bookworm or newer Trixie variants.
- **Production ready:** Battle-tested configurations used across KloudKIT infrastructure.

## Available Tags

| Tag               | Debian Version  | Description                            |
| ----------------- | --------------- | -------------------------------------- |
| `latest`          | 12 *(Bookworm)* | Default, stable release                |
| `bookworm`        | 12 *(Bookworm)* | Explicit stable version                |
| `trixie`          | 13 *(Trixie)*   | Testing release with newer packages    |
| `v0.0.5`          | 12 *(Bookworm)* | Versioned stable release (latest)      |
| `v0.0`            | 12 *(Bookworm)* | Major.minor versioned release (latest) |
| `v0.0.5-bookworm` | 12 *(Bookworm)* | Versioned Bookworm variant             |
| `v0.0.5-trixie`   | 13 *(Trixie)*   | Versioned Trixie variant               |
| `v0.0-bookworm`   | 12 *(Bookworm)* | Major.minor Bookworm variant           |
| `v0.0-trixie`     | 13 *(Trixie)*   | Major.minor Trixie variant             |

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
