const { QueryFile } = require('pg-promise');
const path = require('path');

const sql = file => new QueryFile(path.join(__dirname, file));

const sqlProvider = {
    albums: {
        create: sql('albums/create.sql'),
        drop: sql('albums/drop.sql'),
    },
    songs: {
        create: sql('songs/create.sql'),
        drop: sql('songs/drop.sql'),
    },
    lyrics: {
        create: sql('lyrics/create.sql'),
        drop: sql('lyrics/drop.sql'),
    },
};

module.exports = sqlProvider;
