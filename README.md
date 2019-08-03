# yeezy-me

> Somebody ordered pancakes, I just sip the sizzurp /
> That right there could drive a sane man bizzerk!

---

#### description

a simple application to make all things yeezy

#### getting started - application

-   `yarn`
-   `yarn dev`

#### getting started - db (local)

-   create a database in postgres (app name defaults to 'yeezy')
-   `cd yeezy-me && export DB_NAME=<db_name>` _skip this step if using default name_
-   `yarn db:migrate`
-   `yarn seed`

#### getting started - docker

-   `docker-machine ip` to get virtual machine ip
-   `docker compose up`
-   `curl -X POST http://<docker-machine ip>:8080/yeezy-me`

You should now have a container running a basic node environment as well as the yeezy-me application.
The containers port can be checked using `docker port yeezy-me`.

A curl request can now be made to the endpoint `curl -X POST localhost:<port>/yeezy-me`.

You will have to manually run `yarn db:migrate` and then `yarn seed` in the web docker container.

NOTES:
In production: -`docker-compose build web` -`docker-compose up`

In development: -`docker-compose -f docker-compose.yml -f develop.yml -d up`
this will link the local volume so there will be no need to restart/rebuild the container when developing.

Top terms per cluster:
Cluster 0: ab len syn res window urgp tcp prec spt src
Cluster 1: af len syn tcp window res urgp dpt mac kernel
