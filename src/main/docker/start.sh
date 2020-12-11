#!/bin/sh
set -eu
JAVA_OPTS="-Dvertx.disableDnsResolver=true ${JAVA_OPTS:-}"
exec dockerize \
  -wait tcp://${POSTGRES_HOST}:${POSTGRES_PORT} \
  -wait tcp://${MONGO_HOST}:${MONGO_PORT} \
  -template "${APP_CONF}.tpl:${APP_CONF}" \
  java ${JAVA_OPTS} -jar "${APP_FILE}" -conf "${APP_CONF}"
