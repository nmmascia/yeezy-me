'use strict'

const db = require('../src/database.js');

exports.up = function(next) {
    db.query('CREATE TABLE albums (id uuid NOT NULL);')
    .then(next)
    .catch(console.log);
};

exports.down = function(next) {
    db.query('DROP TABLE albums;')
    .then(next)
    .catch(console.log);
};
