# based on https://github.com/aaemnnosttv/wp-sqlite-db

FROM wordpress:6.0.2-fpm-alpine

ADD --chown=www-data:www-data https://github.com/aaemnnosttv/wp-sqlite-db/raw/master/src/db.php /usr/src/wordpress/wp-content
ADD --chown=www-data:www-data https://raw.githubusercontent.com/WordPress/WordPress/master/wp-config-sample.php /usr/src/wordpress/wp-config.php