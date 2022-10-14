# wordpress-lite

wordpress with sqlite database in 3 versions

## fpm version with nginx on one container

image size:

- galileo/wordpress-fpm-lite: 300M

```
cd fpm-lite
docker compose build
docker compose up
```

open browser to http://localhost:8081

## fpm version with nginx on two containers

image size:

- galileo/wordpress-fpm: 301M
- galileo/wordpress-nginx: 29M

```
cd fpm
docker compose build
docker compose up
```

open browser to http://localhost:8081

### publish to docker (private)

```
cd fpm
task build
task publish
```

## apache standalone

image size:

- galileo/wordpress-apache: 600M

```
cd apache
docker compose build
docker compose up
```

open browser to http://localhost:8081

## references

- https://github.com/milanboers/wordpress-nginx
