const db = require('../db/database');
const sql = require('../db/sql');

const getLyric = (options = {}) => {
    if ({}.hasOwnProperty.call(options, 'song')) {
        return db.one(sql.songs.findByTitle, { title: options.song })
        .then(({ id }) => db.one(sql.lyrics.findBySong, { songId: id }));
    }

    return db.one(sql.lyrics.random);
};

module.exports = {
    getLyric,
};
