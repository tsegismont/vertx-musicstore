#!/bin/sh

sleep 10

curl -X POST -u Administrator:password -d name=album-comments -d ramQuotaMB=200 -d authType=none -d proxyPort=11315 \
http://couchbase:8091/pools/default/buckets

exec java -jar ${APP_FILE} -conf ${APP_CONF}
