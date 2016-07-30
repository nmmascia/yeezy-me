const fetch = require('isomorphic-fetch');
const fs = require('fs');
const fsp = require('fsp');
const mkdirp = require('mkdirp');
const path = require('path');
const snakeCase = require('snake-case');

const albums = require('./yeezy-albums');

const fetchYeezyLyrics = song => {
    const track = snakeCase(song.replace(/'/g, ''));
    const url = `http://www.kanyerest.xyz/api/track/${track}`;

    return fetch(url, { method: 'get' })
    .then(response => response.json())
    .then(data => data);
};

const createLyricsDirectory = data => {
    const dir = path.resolve(__dirname, 'lyrics');

    return new Promise((resolve, reject) => {
        mkdirp(dir, err => {
            if (err) reject();
            resolve({ dir, data });
        });
    });
};

const writeLyricFiles = (album, dir, data) => {
    const filename = `${album}_lyrics.json`;
    const filepath = `${dir}/${filename}`;

    fs.writeFile(filepath, JSON.stringify(data), 'utf-8', err => console.log);
};

albums.forEach(album => {
    const $lyrics = album.songs.map(fetchYeezyLyrics);
    const formattedTitle = snakeCase(album.title.toLowerCase())

    Promise.all($lyrics)
    .then(createLyricsDirectory)
    .then(data => writeLyricFiles(formattedTitle, data.dir, data.data));
});
