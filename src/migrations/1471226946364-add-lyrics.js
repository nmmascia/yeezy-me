'use strict';

const db = require('../database');
const sql = require('../sql');

exports.up = function (next) {
    db.query(sql.lyrics.create)
    .then(() => next())
    .catch(console.log);
};

exports.down = function (next) {
    db.query(sql.lyrics.drop)
    .then(() => next())
    .catch(console.log);
};
