FROM debian:buster

#Copie des sources necessaires
COPY srcs/server_conf /tmp/
COPY srcs/indexoff_conf /tmp/
COPY srcs/ssl/localhost.key /tmp/
COPY srcs/ssl/localhost.crt /tmp/
COPY srcs/wordpress-5.5.1-fr_FR.tar.gz /tmp/
COPY srcs/wp-config.php /tmp/
COPY srcs/config.inc.php /tmp/
COPY srcs/script.sh ./
COPY srcs/index_on.sh /tmp/
COPY srcs/index_off.sh /tmp/

#Lancement du script de SETUP.
RUN bash script.sh
RUN rm -rf script.sh

#BASH
CMD service nginx start; \
    service mysql restart; \
    service php7.3-fpm start; \
    bash