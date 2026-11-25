<img src="icon.png" width="100" alt="fs2es-indexer icon">

# fs2es-indexer Docker

Unofficial automated Docker packaging of [Ellerhold/fs2es-indexer](https://github.com/Ellerhold/fs2es-indexer), a filesystem filename and directory indexer for Elasticsearch and Samba Spotlight search.

## Docker image

```
ghcr.io/k29t59dh/fs2es-indexer-docker:latest
```

Version-specific tags are also available.

## Automated builds

GitHub Actions checks daily for new stable upstream releases, builds an AMD64 Docker image, performs basic smoke tests and publishes successful builds to GitHub Container Registry.

The upstream application is packaged without source-code modifications.

## Source code

The original project is available at:

https://github.com/Ellerhold/fs2es-indexer

Each container image includes the complete corresponding upstream application source under `/usr/src/fs2es-indexer`.

The upstream version and exact Git commit are recorded in the OCI image metadata. The Dockerfile and automated build instructions are available in this repository.

## License

fs2es-indexer is Copyright (C) 2023–2026 Ellerhold AG and is distributed under the GNU General Public License, version 3 or later.

The upstream license and copyright information are included in each container image.

https://github.com/Ellerhold/fs2es-indexer/blob/0.12.6/LICENSE

This is an independent packaging project and is not affiliated with or endorsed by Ellerhold AG.

## Support

For Docker packaging issues, use this repository's issue tracker. For application issues, refer to the upstream project.
