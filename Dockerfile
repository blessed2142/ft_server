FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx wget nano mariadb-server php7.3-fpm php7.3-mysql

COPY /srcs/ /tmp/

WORKDIR /tmp/

RUN bash wp_pma_install.sh

EXPOSE 80 443

CMD bash start.sh
