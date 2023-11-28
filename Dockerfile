# Dockerfile
FROM php:7.4-apache
COPY src /var/www/html/
RUN chown -R www-data:www-data /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]