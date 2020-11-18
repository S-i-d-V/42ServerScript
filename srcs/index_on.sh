rm -rf /etc/nginx/sites-enabled/indexoff_conf /etc/nginx/sites-available/indexoff_conf
cp /etc/nginx/index_alias/server_conf /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/server_conf /etc/nginx/sites-enabled/
service nginx restart;
echo "Autoindex enabled."