const parseOptions = (req, res, next) => {
  let options = req.body;

  if (req.get('user-agent').includes('Slackbot')) {
    options = req.body.text.split(',').reduce((o, s) => {
      const tuple = s.split('=').map((p) => p.trim());
      o[tuple[0]] = tuple[1];
      return o;
    }, {});
  }

  res.locals.options = options;
  next();
};

module.exports = {
  parseOptions,
};
