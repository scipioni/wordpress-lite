# wordpress-lite

wordpress with sqlite database in 2 versions: fpm with nginx and standalone container apache

## fpm version with nginx

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
