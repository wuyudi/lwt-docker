# LWT Docker

This project builds [Learning With Texts](http://lwt.sf.net) for
[Docker](https://www.docker.com/).

## Usage

Check `./run.sh`, or start a MySQL container and then link it to the LWT
container as `mysql`. You'll want to mount external volumes for `/var/lib/mysql`
on the MySQL container and `/var/www/html/media` on the LWT container, or when
you shut down the containers you will lose your database and media.
