'use strict';

const db = require('../database');
const sql = require('../sql');

/* eslint-disable func-names */

exports.up = function(next) {
  db.query(sql.lyrics.create)
    .then(() => next())
    .catch((err) => {
      next();
    });
};

exports.down = function(next) {
  db.query(sql.lyrics.drop)
    .then(() => next())
    .catch((err) => {
      next();
    });
};
