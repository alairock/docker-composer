FROM alairock/phpcli:latest

MAINTAINER "Skyler Lewis" <sblnog@gmail.com>

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    composer self-update

RUN mkdir -p /data/www
VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["composer"]
CMD ["--help"]
