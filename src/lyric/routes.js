const express = require('express');

const router = express.Router(); // eslint-disable-line new-cap

const { getLyric } = require('../yeezy-me/service');

router.get('/', async (req, res, next) => {
  try {
    const { text: lyric } = await getLyric(req.query);
    res.send({ lyric });
  } catch (error) {
    next(error);
  }
});

module.exports = router;
