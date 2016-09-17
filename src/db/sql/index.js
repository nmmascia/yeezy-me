const { QueryFile } = require('pg-promise');
const path = require('path');

const sql = file => new QueryFile(path.join(__dirname, file));

const sqlProvider = {
    albums: {
        create: sql('albums/create.sql'),
        drop: sql('albums/drop.sql'),
        insert: sql('albums/insert.sql'),
    },
    songs: {
        create: sql('songs/create.sql'),
        drop: sql('songs/drop.sql'),
        findByTitle: sql('songs/findByTitle.sql'),
        insert: sql('songs/insert.sql'),
    },
    lyrics: {
        create: sql('lyrics/create.sql'),
        drop: sql('lyrics/drop.sql'),
        findBySong: sql('lyrics/findBySong.sql'),
        insert: sql('lyrics/insert.sql'),
        random: sql('lyrics/random.sql'),
    },
};

module.exports = sqlProvider;
