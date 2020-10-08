FROM debian:buster

#Copie des sources necessaires
COPY srcs/server_conf /tmp/
COPY srcs/private.key /tmp/
COPY srcs/server.crt /tmp/
COPY srcs/script.sh ./

#Lancement du script de SETUP.
RUN bash script.sh

#BASH
CMD bash