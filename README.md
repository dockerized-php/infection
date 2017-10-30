# Docker image for [infection](https://github.com/infection/infection)

[![Build Status](https://travis-ci.org/dockerized-php/infection.svg?branch=master)](https://travis-ci.org/dockerized-php/infection)

The image are based on [Alpine Linux](https://alpinelinux.org/) and built daily.

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

In case that the version behind the latest tag is not the newest,
you can build a specific version by yourself:

```
git clone https://github.com/dockerized-php/infection.git
cd infection
docker build --build-arg VERSION=0.5.0 -t dockerizedphp/infection latest/
```
