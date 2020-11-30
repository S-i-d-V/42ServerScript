# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugotheveny <ugotheveny@student.42.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/25 16:07:45 by ugotheveny        #+#    #+#              #
#    Updated: 2020/11/30 13:23:38 by ugotheveny       ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

#Copie des sources necessaires
COPY srcs/server_conf /tmp/
COPY srcs/ssl/localhost.key /tmp/
COPY srcs/ssl/localhost.crt /tmp/
COPY srcs/wordpress-5.5.1-fr_FR.tar.gz /tmp/
COPY srcs/wp-config.php /tmp/
COPY srcs/config.inc.php /tmp/
COPY srcs/script.sh ./
COPY srcs/autoindex.sh /tmp/

#Lancement du script de SETUP.
RUN bash script.sh
RUN rm -rf script.sh

#BASH
CMD service nginx start; \
    service mysql restart; \
    service php7.3-fpm start; \
    sh /tmp/autoindex.sh \
    bash