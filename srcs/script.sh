#!/bin/bash

#Installation et update des packets
apt-get update
apt-get install -y wget
apt-get install -y nginx
apt-get install -y mariadb-server
apt-get install -y php-json php-mbstring

#Set-up Nginx + Certificat SSL
mv /tmp/server_conf /etc/nginx/sites-available/
rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/server_conf /etc/nginx/sites-enabled/
mv /tmp/localhost.crt /etc/ssl/certs/
mv /tmp/localhost.key /etc/ssl/private/

#Set-up Wordpress
mkdir /var/www/localhost
wget https://fr.wordpress.org/wordpress-5.5.1-fr_FR.tar.gz -P /var/www/localhost/
tar xfC var/www/localhost/wordpress-5.5.1-fr_FR.tar.gz var/www/localhost/ && rm -rf /var/www/localhost/wordpress-5.5.1-fr_FR.tar.gz

#Set-up PHPmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.6/phpMyAdmin-4.9.6-english.tar.gz -P /var/www/localhost/
tar xfC var/www/localhost/phpMyAdmin-4.9.6-english.tar.gz var/www/localhost/ && rm -rf /var/www/localhost/phpMyAdmin-4.9.6-english.tar.gz

#Set-up MySQL
service mysql start
mysql -u root -e "CREATE DATABASE localhost_db;"
mysql -u root -e "GRANT ALL PRIVILEGES ON localhost_db.* TO 'localhost_admin'@'localhost' IDENTIFIED BY 'admin';"
mysql -u root -e "FLUSH PRIVILEGES;"