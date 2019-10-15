FROM ubuntu

## prepare repositories

RUN apt-get update >> /dev/null
RUN apt-get install -qq software-properties-common
RUN add-apt-repository ppa:ondrej/php >> /dev/null
RUN apt-get update >> /dev/null

## nginx
RUN apt-get install -qq nginx 

## php
RUN apt-get install -qq php7.3-fpm
RUN apt-get install -qq php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl php7.3-gd php7.3-imagick php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring php7.3-opcache php7.3-soap php7.3-zip php7.3-intl

## composer
RUN apt-get install -qq wget
COPY configFiles/install-composer.sh /tmp
RUN sh /tmp/install-composer.sh

## mysql
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq mysql-server


# FILES
COPY configFiles/nginx-default /etc/nginx/sites-available/default
COPY configFiles/sh-* /root/

# FINALIZE
CMD  sh /root/sh-services.sh && sh /root/sh-post-services.sh && /bin/bash
