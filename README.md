# nextcloud-news-updater-docker

![Run CI build](https://github.com/aitorpazos/nextcloud-news-updater-docker/workflows/Run%20CI%20build/badge.svg)

This repository builds a docker image to run external nextcloud news updater script.

It packages the cron updater provided by https://github.com/nextcloud/news-updater

# Usage

This container will interact with your nextcloud installation through the nextcloud news application API, so it will
communicate with your nextcloud service through HTTP.

It is expected to be run as a long-running process.

These are the environment variables you'll need to set:

- UPDATER_THREADS   : Parallel threads to be used (Default: 10)
- UPDATER_TIMEOUT   : Timeout in seconds per thread (Default: 5 minutes)
- UPDATER_INTERVAL  : Interval in seconds between updates (Default: 15 minutes)
- UPDATER_API_LEVEL : News api level. Options: v1-2, v2, v15 (Default: v15)
- UPDATER_LOG_LEVEL : Log level. Options: info, error (Default: error)
- UPDATER_USER      : Admin user to log into Nextcloud (Default: unset)
- UPDATER_PASSWORD  : Admin user's password (Default: unset)
- UPDATER_MODE      : Mode to use to run the script. Options: endless, singlerun (Default: endless)
