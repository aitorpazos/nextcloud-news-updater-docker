FROM python:alpine

ARG VERSION=latest
ARG APP_VERSION=11.0.0

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

RUN apk add php && \
    pip3 install nextcloud_news_updater==${APP_VERSION} && \
    chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

LABEL Name="Nextcloud-news-updater" \
      Version="${VERSION}" \
      org.opencontainers.image.url="https://github.com/nextcloud/news-updater" \
      org.opencontainers.image.source="https://github.com/aitorpazos/nextcloud-news-updater-docker" \
      org.opencontainers.image.authors="Aitor Pazos<mail@aitorpazos.es>" \
      org.opencontainers.image.licenses="GPLv3" \
      org.opencontainers.image.title="Nextcloud news updater" \
      org.opencontainers.image.version="${VERSION}"

ENV UPDATER_THREADS=10      \
    UPDATER_TIMEOUT=300     \
    UPDATER_INTERVAL=900    \
    UPDATER_API_LEVEL=v15   \
    UPDATER_LOG_LEVEL=error \
    UPDATER_USER=unset      \
    UPDATER_PASSWORD=unset  \
    UPDATER_MODE=endless
