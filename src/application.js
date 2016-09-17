const bodyParser = require('body-parser');
const express = require('express');

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

const routes = require('./yeezy-me/routes');
app.use('/yeezy-me', routes);

app.use((err, req, res, next) => {
    res.status(500).send({ error: err.name });
});

//

const port = process.env.PORT || 8080;
app.listen(port, (err) => {
    /* eslint-disable */
    if (err) throw new Error(err);
    console.log(`So go ahead, go nuts, go apeshit on PORT: ${port}`);
    /* eslint-enable */
});
