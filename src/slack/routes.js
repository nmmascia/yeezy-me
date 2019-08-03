const express = require('express');

const router = express.Router(); // eslint-disable-line new-cap

const { parseOptions } = require('./middlewares');
const { getLyric } = require('../yeezy-me/service');

router.post('/', parseOptions, async (req, res, next) => {
  try {
    const { text } = await getLyric(res.locals.options);
    res.send({
      response_type: 'in_channel',
      text,
    });
  } catch (error) {
    next(error);
  }
});

module.exports = router;
