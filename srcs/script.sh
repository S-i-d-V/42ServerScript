#Installation et update des packets
apt-get update
apt-get install -y nginx
apt-get install -y wget
#apt-get install -y mariadb-server
#apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-mbstring php-json

#Set-up Nginx
mv /tmp/server_conf /etc/nginx/sites-available/
rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/server_conf /etc/nginx/sites-enabled/

#Certificat SSL
mv /tmp/localhost.crt /etc/ssl/certs/
mv /tmp/localhost.key /etc/ssl/private/

#Set-up Wordpress
mkdir /var/www/localhost
mv /tmp/wordpress.tar.gz  /var/www/localhost/
tar xfC var/www/localhost/wordpress.tar.gz var/www/localhost/ && rm -rf /var/www/localhost/wordpress.tar.gz

#Set-up PHPmyadmin

#Set-up MySQL
