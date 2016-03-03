FROM alairock/php:latest

MAINTAINER Skyler Lewis <sblnog@gmail.com>

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

ENV COMPOSER_HOME /root/composer

ENV PATH $COMPOSER_HOME/vendor/bin:$PATH
