const express = require('express');

const router = express.Router(); // eslint-disable-line new-cap

router.get('/', (req, res, next) => {
  res.send({ status: 'ok' });
});

module.exports = router;
