mv /tmp/default1 /etc/nginx/sites-available/
mv /etc/nginx/sites-available/default /tmp/
mv /tmp/default /tmp/default1 
mv /etc/nginx/sites-available/default1 /etc/nginx/sites-available/default
service nginx reload
