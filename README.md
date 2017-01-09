# yeezy-me
> Somebody ordered pancakes, I just sip the sizzurp /
> That right there could drive a sane man bizzerk!

---

#### description
a simple application to make all things yeezy

#### getting started - application
- `npm install`
- `npm run dev`
- `npm run lint`

#### getting started - db (local)
- create a database in postgres (app name defaults to 'yeezy')
- `cd yeezy-me && export DB_NAME=<db_name>` *skip this step if using default name*
- `npm run migrate`
- `npm run seed`

#### getting started - docker
- `docker-machine ip` to get virtual machine ip
- `docker compose up`
- `curl -X POST http://<docker-machine ip>:8080/yeezy-me`

You should now have a container running a basic node environment as well as the yeezy-me application.
The containers port can be checked using `docker port yeezy-me`.

A curl request can now be made to the endpoint `curl -X POST localhost:<port>/yeezy-me`.

You will have to manually run `npm run migrate` and then `npm run seed` in the web docker container.


Top terms per cluster:
Cluster 0:  ab  len  syn  res  window  urgp  tcp  prec  spt  src
Cluster 1:  af  len  syn  tcp  window  res  urgp  dpt  mac  kernel
