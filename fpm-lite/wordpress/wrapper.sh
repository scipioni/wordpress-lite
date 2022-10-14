#!/bin/bash

/usr/local/bin/docker-entrypoint.sh php-fpm &

nginx -g 'daemon off;' &

# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?