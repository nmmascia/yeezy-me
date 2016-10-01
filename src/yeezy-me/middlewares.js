const parseOptions = (req, res, next) => {
    let options = {};

    console.log("req", req.body);

    if ( typeof req.body.text !== 'undefined' && req.body.text.length ) {

        options = req.body.text
        .split(',')
        .reduce((o, s) => {
            const tuple = s.split('=').map(p => p.trim());
            o[tuple[0]] = tuple[1];
            return o;
        }, {});
    } else if (Object.keys(req.body).length) {
        options = req.body;
    }

    console.log("options", options);

    res.locals.options = options;
    next();
};

module.exports = {
    parseOptions,
};
