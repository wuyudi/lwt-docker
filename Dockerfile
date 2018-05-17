FROM php:7-apache

RUN apt-get update && apt-get install -y unzip

RUN mkdir -p /var/www/html/lwt && \
    curl -L http://sourceforge.net/projects/lwt/files/latest/download >/tmp/lwt.zip && \
    cd /var/www/html/lwt && \
    unzip /tmp/lwt.zip && \
    rm /tmp/lwt.zip

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install mbstring

COPY connect.inc.php /var/www/html/lwt
COPY php.ini /usr/local/etc/php/
ARG timezone=America/New_York
RUN echo "date.timezone = ${timezone}" >> /usr/local/etc/php/php.ini
RUN cat /usr/local/etc/php/php.ini
