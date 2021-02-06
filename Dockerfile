FROM python:alpine

ARG VERSION=latest

RUN pip3 install nextcloud_news_updater 

ENTRYPOINT ["nextcloud-news-updater"]

LABEL org.opencontainers.image.url="https://github.com/nextcloud/news-updater" \
      org.opencontainers.image.source="https://github.com/aitorpazos/nextcloud-news-updater-docker" \
      org.opencontainers.image.authors="Aitor Pazos<mail@aitorpazos.es>" \
      org.opencontainers.image.licenses="GPLv3" \
      org.opencontainers.image.title="Nextcloud news updater" \
      org.opencontainers.image.version="${VERSION}"
