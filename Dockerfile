FROM debian:buster

#Copie des sources necessaires
COPY srcs/server_conf /tmp/
COPY srcs/localhost.key /tmp/
COPY srcs/localhost.crt /tmp/
COPY srcs/wordpress.tar.gz /tmp/
COPY srcs/script.sh ./

#Lancement du script de SETUP.
RUN bash script.sh

#BASH
CMD bash