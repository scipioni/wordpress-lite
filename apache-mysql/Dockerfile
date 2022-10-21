# based on https://github.com/aaemnnosttv/wp-sqlite-db

FROM wordpress:6.0.3-apache

ADD --chown=www-data:www-data https://github.com/aaemnnosttv/wp-sqlite-db/raw/master/src/db.php /usr/src/wordpress/wp-content
ADD --chown=www-data:www-data https://raw.githubusercontent.com/WordPress/WordPress/master/wp-config-sample.php /usr/src/wordpress/wp-config.php
COPY custom.ini /usr/local/etc/php/conf.d/
