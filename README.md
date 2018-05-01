# LWT Docker

This project builds [Learning With Texts](http://lwt.sf.net) for
[Docker](https://www.docker.com/). It's based on the image from
[brianhicks](https://github.com/brianhicks/lwt-docker).

## Usage

I use the following in docker-compose:

```
  lwt:
    container_name: "lwt"
    image: "lwt-docker"
    restart: "always"
    environment:
      MYSQL_PORT_3306_TCP_ADDR: "lwt-mysql"
      MYSQL_ENV_MYSQL_USER: "lwt"
      MYSQL_ENV_MYSQL_PASSWORD: "password"
      MYSQL_ENV_MYSQL_DATABASE: "lwt"
    volumes:
      - "/docker/lwt/media:/var/www/html/media"
    depends_on:
      - "lwt-mysql"

  lwt-mysql:
    container_name: "lwt-mysql"
    image: "mysql:5.7"
    restart: "always"
    environment:
      MYSQL_USER: "lwt"
      MYSQL_PASSWORD: "password"
      MYSQL_DATABASE: "lwt"
      MYSQL_ROOT_PASSWORD: "root-password"
    user: "1001:1001"
    volumes:
      - "/etc/passwd:/etc/passwd:ro"
      - "/docker/lwt/mysql:/var/lib/mysql"
```

## Known Issues

- The timezone is hardcoded to mine (America/Sao_Paulo). If this bothers you,
  feel free to fork.
