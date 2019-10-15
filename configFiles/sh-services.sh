mysqld --initialize --user=root

service nginx start
service php7.3-fpm start
service mysql start
