FROM openjdk:8-jre-alpine

ENV APP_HOME /opt/vertx-musicstore
ENV APP_SCRIPT start.sh
ENV APP_FILE vertx-musicstore.jar
ENV APP_CONF conf.json

ENV POSTGRES_HOST postgres
ENV POSTGRES_PORT 5432
ENV MONGO_HOST mongo
ENV MONGO_PORT 27017

ENV DOCKERIZE_VERSION v0.6.1

EXPOSE 8080

COPY src/main/docker/$APP_SCRIPT $APP_HOME/
COPY target/$APP_FILE $APP_HOME/
COPY src/main/docker/$APP_CONF.tpl $APP_HOME/

RUN set -eux; \
    apk add --no-cache --update curl; \
# Install dockerize, see https://github.com/jwilder/dockerize
    wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz; \
    tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz; \
    rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR $APP_HOME

ENTRYPOINT ["sh", "-c"]
CMD ["$APP_HOME/$APP_SCRIPT"]

