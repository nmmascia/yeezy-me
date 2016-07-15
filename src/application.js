const chalk = require('chalk');
const express = require('express');

//

const app = express();
const router = express.Router();

//

require('./yeezy-me/routes')(router);
app.use('/yeezy-me', router);

//

const port = process.env.PORT || 8080;
app.listen(port, (err) => {
    if (err) throw new Error(err);
    const greeting = chalk.magenta(`So go ahead, go nuts, go apeshit on PORT: ${port}`);
    console.log(greeting);
});
