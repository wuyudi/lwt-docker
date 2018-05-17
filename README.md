# LWT Docker

This project builds [Learning With Texts](http://lwt.sf.net) for
[Docker](https://www.docker.com/). It's based on the image from
[brianhicks](https://github.com/brianhicks/lwt-docker), and
the fork from [phrom](https://github.com/phrom/lwt-docker).

## Usage

Running:

    docker-compose up

Should start MySQL and LWT. By default it should be mapped to port `8000`, so you'll access LWT at <http://localhost:8000/lwt/>.

## Notes

- The timezone defaults `America/New_York`. To change it, pass
  [a valid PHP timezone string](http://php.net/manual/en/timezones.php)
  as a `timezone` [build arg](https://docs.docker.com/compose/compose-file/#args)
  in the `lwt` service definition in `docker-compose.yml`.
