#!/usr/bin/env sh
# This entrypoint is used to consume the parameters from environment variables
# and pass them to the command.

nextcloud-news-updater     \
  -t "${UPDATER_THREADS}"  \
  -s "${UPDATER_TIMEOUT}"  \
  -i "${UPDATER_INTERVAL}" \
  -a "${UPDATER_API_LEVEL}"\
  -l "${UPDATER_LOG_LEVEL}"\
  -u "${UPDATER_USER}"     \
  -p "${UPDATER_PASSWORD}" \
  -m "${UPDATER_MODE}" "$@"
