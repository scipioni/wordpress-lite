# based on https://github.com/aaemnnosttv/wp-sqlite-db

FROM wordpress:6.0.2-fpm-alpine

ARG worker_processes=3

ADD --chown=www-data:www-data https://github.com/aaemnnosttv/wp-sqlite-db/raw/master/src/db.php /usr/src/wordpress/wp-content
ADD --chown=www-data:www-data https://raw.githubusercontent.com/WordPress/WordPress/master/wp-config-sample.php /usr/src/wordpress/wp-config.php

RUN apk add --no-cache nginx
COPY default.conf /etc/nginx/http.d/default.conf
RUN sed -i "s/^worker_processes.*/worker_processes ${worker_processes};/" /etc/nginx/nginx.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

COPY wrapper.sh /wrapper.sh
CMD /wrapper.sh