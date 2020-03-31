#!/bin/bash
envsubst '\$PORT' < /etc/nginx/default.conf.template > /etc/nginx/sites-enabled/default
#nginx -g 'daemon off;'
service nginx restart
service php7.0-fpm restart
service mysql restart
tail -f /var/log/nginx/access.log
