const MOCK_QUOTE = `I'm so appalled, spalding ball,
Balding Donald Trump taking dollars from y'all!\n`;

const createRoutes = router => {
    router.post('/', (req, res) => {
        res.send(MOCK_QUOTE);
    });

    return router;
};

module.exports = createRoutes;
