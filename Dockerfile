FROM debian:buster

#Copie des sources necessaires
COPY srcs/server_conf /tmp/
COPY srcs/ssl/localhost.key /tmp/
COPY srcs/ssl/localhost.crt /tmp/
COPY srcs/wp-config.php /tmp/
COPY srcs/config.inc.php /tmp/
COPY srcs/script.sh ./

#Lancement du script de SETUP.
RUN bash script.sh

#BASH
CMD service nginx start; \
    service mysql restart; \
    service php7.3-fpm start; \
    bash