const express = require('express');

const router = express.Router(); // eslint-disable-line new-cap

const { getLyric } = require('../yeezy-me/service');

router.get('/',
    (req, res, next) => {
        getLyric(req.query)
        .then(({ text }) => {
            res.send({ lyric: text });
        })
        .catch(err => next(err));
    }
);

module.exports = router;
