FROM python:3.13-slim

ARG UPSTREAM_VERSION
ARG UPSTREAM_REVISION

LABEL org.opencontainers.image.title="fs2es-indexer" \
      org.opencontainers.image.description="Unofficial Docker packaging of fs2es-indexer" \
      org.opencontainers.image.source="https://github.com/k29t59dh/fs2es-indexer-docker" \
      org.opencontainers.image.url="https://github.com/Ellerhold/fs2es-indexer" \
      org.opencontainers.image.licenses="GPL-3.0-or-later" \
      org.opencontainers.image.version="${UPSTREAM_VERSION}" \
      org.opencontainers.image.revision="${UPSTREAM_REVISION}"

WORKDIR /opt/fs2es-indexer

COPY source/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY source/fs2es-indexer .
COPY source/lib/ ./lib/
COPY source/config/ /etc/fs2es-indexer/

# Preserve upstream source, license and copyright information.
COPY source/ /usr/src/fs2es-indexer/
COPY source/LICENSE /usr/share/doc/fs2es-indexer/LICENSE
COPY source/docs/debian-copyright /usr/share/doc/fs2es-indexer/copyright

ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["python", "/opt/fs2es-indexer/fs2es-indexer"]
CMD ["index"]
