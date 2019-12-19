#
FROM debian:buster-slim

RUN apt update && apt install -y apache2

RUN apt update && apt install -y php

COPY *.php /var/www/html/

EXPOSE 80

ENV USER ""

ENV USERNAME ""

ENV PASSWORD ""

CMD apachectl -D FOREGROUND
