const express = require('express');

const app = express();

const routes = require('./yeezy-me/routes');
app.use('/yeezy-me', routes);

//

const port = process.env.PORT || 8080;
app.listen(port, (err) => {
    /* eslint-disable */
    if (err) throw new Error(err);
    console.log(`So go ahead, go nuts, go apeshit on PORT: ${port}`);
    /* eslint-enable */
});
