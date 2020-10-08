#Installation et update des packets
apt-get update
apt-get install -y nginx

#Set-up Nginx
cp /tmp/server_conf /etc/nginx/sites-available/
rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default
cd /etc/nginx/sites-enabled/ && ln -s ../sites-available/server_conf .

#Configuration SSL
mkdir /etc/ssl
cp /tmp/server.crt /etc/ssl
cp /tmp/private.key /etc/ssl