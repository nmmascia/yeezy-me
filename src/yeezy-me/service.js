const db = require('../db/database');
const sql = require('../db/sql');

const getLyric = () => {
    return db.one(sql.lyrics.random);
};

module.exports = {
    getLyric,
};
