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
        getLyric()
        .then(({ text }) => {
            res.send({
                response_type: 'in_channel',
                text,
            });
        });
    }
);

module.exports = router;
