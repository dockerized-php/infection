FROM alpine:3.8
MAINTAINER Tommy Muehle <tommy.muehle@gmail.com>

RUN apk --update --progress --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.8/community add \
    curl \
    gnupg \
    php7 \
    php7-xdebug \
    php7-openssl \
    php7-ctype \
    php7-json \
    php7-phar \
    php7-zlib \
    php7-mbstring \
    php7-tokenizer \
    php7-dom \
    php7-xml \
    php7-xmlwriter \
    php7-simplexml

RUN export LATEST_VERSION=$(curl -s https://api.github.com/repos/infection/infection/releases/latest |grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') \
    && echo "Latest version is:" $LATEST_VERSION \
    && curl -L -so /usr/local/bin/infection https://github.com/infection/infection/releases/download/${LATEST_VERSION}/infection.phar \
    && curl -L -so /usr/local/bin/infection.asc https://github.com/infection/infection/releases/download/${LATEST_VERSION}/infection.phar.asc \
    && gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys 493B4AA0 \
    && gpg --with-fingerprint --verify /usr/local/bin/infection.asc /usr/local/bin/infection

RUN echo "zend_extension=xdebug.so" > /etc/php7/conf.d/xdebug.ini \
  && chmod +x /usr/local/bin/infection \
  && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME /app
WORKDIR /app

ENTRYPOINT ["infection"]
