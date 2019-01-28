# Docker image for [infection](https://github.com/infection/infection)

[![Build Status](https://travis-ci.org/dockerized-php/infection.svg?branch=master)](https://travis-ci.org/dockerized-php/infection)
[![Docker Build](https://img.shields.io/docker/build/dockerizedphp/infection.svg)](https://hub.docker.com/r/dockerizedphp/infection)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockerizedphp/infection.svg)](https://hub.docker.com/r/dockerizedphp/infection)
[![](https://images.microbadger.com/badges/image/dockerizedphp/infection.svg)](https://microbadger.com/images/dockerizedphp/infection)

The image is based on [Alpine Linux](https://alpinelinux.org/) and built daily.

## Supported tags

- `latest` [(latest/Dockerfile)](https://github.com/dockerized-php/infection/blob/master/latest/Dockerfile)

## How to use this image

### Install

Install the container:

```
docker pull dockerizedphp/infection
```

### Usage

```
docker run --rm -ti -v $PWD:/app dockerizedphp/infection run src
```

You can also change some Xdebug settings as in the following command:

```
docker run --rm -ti -v $PWD:/app --entrypoint=php dockerizedphp/infection -d xdebug.idekey=PHPSTORM /usr/local/bin/infection --version
```
