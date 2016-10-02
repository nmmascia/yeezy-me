const bodyParser = require('body-parser');
const cors = require('cors');
const express = require('express');

const app = express();

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

const yeezyRoutes = require('./yeezy-me/routes');
const statusRoutes = require('./status/routes');

app.use('/yeezy-me', yeezyRoutes);
app.use('/status', statusRoutes);

app.use((err, req, res, next) => {
    res.status(500).send({ error: err.name });
});

//

const port = process.env.PORT || 8080;
app.listen(port, err => {
    /* eslint-disable */
    if (err) throw new Error(err);
    console.log(`So go ahead, go nuts, go apeshit on PORT: ${port}`);
    /* eslint-enable */
});
