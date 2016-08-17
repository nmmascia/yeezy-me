const chalk = require('chalk');
const express = require('express');

//

const db = require('./database'); // eslint-disable-line

const app = express();
const router = express.Router(); // eslint-disable-line new-cap

//

require('./yeezy-me/routes')(router);
app.use('/yeezy-me', router);

//

const port = process.env.PORT || 8080;
app.listen(port, (err) => {
    /* eslint-disable */
    if (err) throw new Error(err);
    const greeting = chalk.magenta(`So go ahead, go nuts, go apeshit on PORT: ${port}`);
    console.log(greeting);
    /* eslint-enable */
});
