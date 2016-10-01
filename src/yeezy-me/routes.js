const express = require('express');

const router = express.Router(); // eslint-disable-line new-cap

const { parseOptions } = require('./middlewares');
const { getLyric } = require('./service');

router.get('/', (req, res, next) => {
    res.send('');
});

router.post('/',
    parseOptions,
    (req, res, next) => {
        getLyric(res.locals.options)
        .then(({ text }) => {
            console.log("text", text);
            res.send({
                response_type: 'in_channel',
                text,
            });
        })
        .catch(err => next(err));
    }
);

module.exports = router;
