FROM php:8-apache

RUN apt update && apt install -y unzip libonig5 libonig-dev
ADD https://nchc.dl.sourceforge.net/project/learning-with-texts/learning_with_texts_2_0_2_complete.zip /tmp/lwt.zip
RUN mkdir -p /var/www/html/lwt && \
    cd /var/www/html/lwt && \
    unzip /tmp/lwt.zip -d /tmp/ && \
    ls &&\
    unzip /tmp/lwt_*.zip &&\
    rm /tmp/lwt.zip

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install mbstring

COPY connect.inc.php /var/www/html/lwt
COPY php.ini /usr/local/etc/php/
ARG timezone=America/New_York
RUN echo "date.timezone = ${timezone}" >> /usr/local/etc/php/php.ini
RUN cat /usr/local/etc/php/php.ini
