FROM tutum/apache-php
MAINTAINER Matthew Werny <matthewwerny+github@gmail.com>

RUN apt-get update \
	&& apt-get -y install wget unzip

RUN rm index.php && rm logo.png

RUN mkdir /users && chmod 777 /users

RUN wget https://github.com/Kroc/NoNonsenseForum/archive/master.zip \
	&& mkdir -p /tmp/nononsenseforum \
	&& unzip -o master.zip -d /tmp/nononsenseforum \
	&& cp -R /tmp/nononsenseforum/NoNonsenseForum-master/* /app \
	&& rm -rf /tmp/nononsenseforum \
	&& rm master.zip

ADD config.php /app/config.php

VOLUME ["/users"]
