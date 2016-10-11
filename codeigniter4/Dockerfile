FROM php:7.0.5-apache
ADD apache2.conf /etc/apache2/apache2.conf

RUN echo "apache:x:1000:1000:apache:/home/apache:/bin/bash" >> /etc/passwd; echo "apache:x:1000:" >> /etc/group
RUN apt-get update && apt-get install -y git && apt-get install -y locales task-japanese --no-install-recommends && rm -r /var/lib/apt/lists/*
RUN echo ja_JP.UTF-8 UTF-8 >> /etc/locale.gen && locale-gen
RUN docker-php-ext-install pdo_mysql mysqli mbstring && a2enmod rewrite


ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8
ENV TERM xterm
