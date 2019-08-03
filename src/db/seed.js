const fetch = require('isomorphic-fetch');
const fsp = require('fs-promise');
const dashify = require('dashify');
const path = require('path');

const db = require('./database');
const sql = require('./sql');

const YEEZY_ALBUMS = require('./fixtures/yeezy-albums');

const createSong = (_album, _song) => {
    const album = _album;
    const song = _song;
    let lyrics = null;

    return {
        cleanUpLyric(lyr) {
            return lyr.split('\n').filter((l) => l !== '');
        },

        get() {
            return {
                album,
                song,
                lyrics,
            };
        },

        load() {
            const track = song
                .toLowerCase()
                .split(' ')
                .join('_');
            const url = `http://www.kanyerest.xyz/api/track/${track}`;

            return fetch(url, { method: 'get' })
                .then((response) => response.json())
                .then((response) => {
                    lyrics = !response.lyrics ? null : this.cleanUpLyric(response.lyrics);
                    return this;
                });
        },
    };
};

const songs = [];

YEEZY_ALBUMS.forEach((album) => {
    album.songs.forEach((song) => songs.push(createSong(album.title, song)));
});

Promise.all(songs.map((s) => s.load()))
    .then((s) => {
        const groups = s.reduce((acc, song) => {
            const data = song.get();

            if (acc[data.album]) {
                acc[data.album] = acc[data.album].concat(data);
            } else {
                acc[data.album] = [].concat(data);
            }

            return acc;
        }, {});

        return groups;
    })
    .then((groups) => {
        // Load data into json files: ./json/<album-name>.json

        Object.keys(groups).forEach((key) => {
            const filePath = `${path.join(__dirname, 'fixtures', dashify(key.toLowerCase()))}.json`;

            fsp.writeFile(filePath, JSON.stringify(groups[key])).then(() => console.log('Wrote file:', key));
        });

        return groups;
    })
    .then((groups) => {
        // Insert data into database
        // todo: pretty ugly here - refactor with transactions?
        Object.keys(groups).forEach((key) => {
            db.one(sql.albums.insert, [key]).then((albumData) => {
                groups[key].forEach((song) => {
                    db.one(sql.songs.insert, {
                        title: song.song,
                        album_id: albumData.id,
                    }).then((songData) => {
                        song.lyrics.forEach((lyr, index) => {
                            db.one(sql.lyrics.insert, {
                                text: lyr,
                                song_id: songData.id,
                                line_number: index,
                            }).then((lyricData) => console.log(lyricData.id));
                        });
                    });
                });
            });
        });
    });
