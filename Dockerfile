FROM ubuntu:20.04

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
        ruby-full \
        ruby-bundler \
        build-essential \
        libmysqlclient-dev \
        mysql-client \
        git

COPY . /app
WORKDIR /app

RUN set -ex \
    && bundle install