openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=rphoebe/CN=localhost"
mv /tmp/default /etc/nginx/sites-available/
service nginx start
service mysql start 
service php7.3-fpm start
mysql -e "CREATE DATABASE wpdatabase DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
mysql -e "GRANT ALL ON wpdatabase.* TO 'wpuser'@'localhost' IDENTIFIED BY 'password';"
mysql -e "FLUSH PRIVILEGES;"
bash
