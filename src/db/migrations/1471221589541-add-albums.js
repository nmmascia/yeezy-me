'use strict';

/* eslint-disable func-names */

const db = require('../database');
const sql = require('../sql');

exports.up = function(next) {
  db.query(sql.albums.create)
    .then(() => next())
    .catch((err) => {
      next();
    });
};

exports.down = function(next) {
  db.query(sql.albums.drop)
    .then(() => next())
    .catch((err) => {
      next();
    });
};
