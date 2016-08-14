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
docker run -it --rm --name yeezy-me yeezy-me
```
>>>>>>> Add Dockerfile; Update Readme
