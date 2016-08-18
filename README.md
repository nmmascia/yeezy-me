# yeezy-me
> Somebody ordered pancakes, I just sip the sizzurp /
> That right there could drive a sane man bizzerk!

---

#### description
a simple application to make all things yeezy

#### getting started - application (Local)
- `npm install`
- `npm run dev`
- `npm run lint`

#### getting started - db (Local)
- create a database in postgres (app name defaults to 'yeezy')
- `cd yeezy-me && export DB_NAME=<db_name>` *skip this step if using default name*
- `npm run migrate`

### Using Docker
```
docker build -t yeezy-me .
docker run -itP --rm --name yeezy-me yeezy-me
```
<<<<<<< fa5a1f1e353c175d4c4c994d82e3b4190d8c0b26
>>>>>>> Add Dockerfile; Update Readme
=======
You should now have a container running a basic node environment as well as the yeezy-me application.
The containers port can be checked using `docker port yeezy-me`.

A curl request can now be made to the endpoint `curl -X POST localhost:<port>/yeezy-me`.
>>>>>>> Update Dockerfile to include Postgres; Update Readme
