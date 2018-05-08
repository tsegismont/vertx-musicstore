#!/bin/sh

exec java -Dvertx.disableDnsResolver=true -jar ${APP_FILE} -conf ${APP_CONF}
