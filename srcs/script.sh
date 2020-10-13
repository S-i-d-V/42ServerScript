#Installation et update des packets
apt-get update
apt-get install -y nginx
apt-get install -y wget
apt install -y mariadb-server mariadb-client

#Set-up Nginx
mv /tmp/server_conf /etc/nginx/sites-available/
rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default
cd /etc/nginx/sites-enabled/ && ln -s ../sites-available/server_conf .

#Certificat SSL
mv /tmp/localhost.crt /etc/ssl/certs/
mv /tmp/localhost.key /etc/ssl/private/