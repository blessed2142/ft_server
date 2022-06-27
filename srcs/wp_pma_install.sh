cd /var/www/html
wget https://wordpress.org/latest.tar.gz
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
tar -xvzf latest.tar.gz 
tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz
rm -rf latest.tar.gz
rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz
mv phpMyAdmin-5.0.4-all-languages phpMyAdmin
cd
mv /tmp/wp-config.php /var/www/html/wordpress
