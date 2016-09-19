const db = require('../db/database');
const sql = require('../db/sql');

const getBySongWithRange = (song, lines) => {
    return db.task(t => {
        return t.one(sql.songs.findByTitle, {
            title: song,
        })
        .then(({ id }) => {
            return t.one(sql.lyrics.findBySong, {
                songId: id,
            })
            .then(({ line_number, song_id }) => {
                return t.query(sql.lyrics.findBySongWithRange, {
                    songId: song_id,
                    min: line_number,
                    max: parseInt(line_number, 10) + (parseInt(lines, 10) - 1),
                })
                .then(d => d);
            });
        });
    })
    .then(res => {
        const lyrics = res.map(({ text }) => `${text}\n`).join('');
        return { text: lyrics };
    })
    .catch(err => console.log('Error:', err));
};

const getLyric = (options = {}) => {
    const hasSong = {}.hasOwnProperty.call(options, 'song');
    const hasLines = {}.hasOwnProperty.call(options, 'lines');

    if (hasSong && hasLines) {
        return getBySongWithRange(options.song, options.lines);
    } else if (hasSong) {
        return db.one(sql.songs.findByTitle, { title: options.song })
        .then(({ id }) => db.one(sql.lyrics.findBySong, { songId: id }));
    }

    return db.one(sql.lyrics.random);
};

module.exports = {
    getLyric,
};
