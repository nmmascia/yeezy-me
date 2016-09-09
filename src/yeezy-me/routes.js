const express = require('express');

const router = express.Router(); // eslint-disable-line new-cap

const MOCK_QUOTE = `I'm so appalled, spalding ball,
Balding Donald Trump taking dollars from y'all!\n`;

router.get('/', (req, res) => {
    res.send(MOCK_QUOTE);
});

router.post('/', (req, res) => {
    res.send(MOCK_QUOTE);
});

module.exports = router;
