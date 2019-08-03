const db = require('../db/database');
const sql = require('../db/sql');

const getBySongWithRange = async (title, lines) => {
    try {
        const { id } = await db.task((t) => t.one(sql.songs.findByTitle, { title }));
        const { line_number, song_id } = await t.one(sql.lyrics.findBySong, {
            songId: id,
        });
        const res = await t.query(sql.lyrics.findBySongWithRange, {
            songId: song_id,
            min: line_number,
            max: parseInt(line_number, 10) + (parseInt(lines, 10) - 1),
        });
        const lyrics = res.reduce((acc, curr) => `${acc}${curr.text}\n`, '');
        return { text: lyrics };
    } catch (error) {
        throw new Error(error);
    }
};

const getLyric = async (options = {}) => {
    const [hasSong, hasLines] = ['song', 'lines'].map((k) => {
        return {}.hasOwnProperty.call(options, k); // eslint-disable-line
    });

    try {
        if (hasSong && hasLines) {
            return getBySongWithRange(options.song, options.lines);
        } else if (hasSong) {
            const { id } = await db.one(sql.songs.findByTitle, {
                title: options.song,
            });
            return db.one(sql.lyrics.findBySong, { songId: id });
        }

        return db.one(sql.lyrics.random);
    } catch (error) {
        throw new Error(error);
    }
};

module.exports = {
    getLyric,
};
