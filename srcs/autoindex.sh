#!/bin/bash
set -e

if [ $AUTO_INDEX = "off" ]
then
        sed -i "s/autoindex on;/autoindex off;/g" /etc/nginx/sites-available/server_conf
fi
service nginx restart

exec "$@"