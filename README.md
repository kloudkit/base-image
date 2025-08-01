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

Use it as the first `FROM` in any Kloudkit-compatible Dockerfile:

```dockerfile
FROM ghcr.io/kloudkit/base-image:latest
# …install your app here…
```

## License

Released under the [**MIT License**](https://github.com/kloudkit/base-image/blob/main/LICENSE)
