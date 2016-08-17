const fetch = require('isomorphic-fetch');
const fs = require('fs');
const mkdirp = require('mkdirp');
const path = require('path');
const snakeCase = require('snake-case');

const albums = require('./yeezy-albums');

const prepLyrics = lyrics => (
    lyrics
    .split('\n')
    .filter(line => line !== '')
);

const fetchYeezyLyrics = song => {
    const track = snakeCase(song.replace(/'/g, ''));
    const url = `http://www.kanyerest.xyz/api/track/${track}`;

    return fetch(url, { method: 'get' })
    .then(response => response.json())
    .then(data => data);
};

const convertLyricsBlockToLines = albumData => {
    return albumData.map(data => {
        if (data.lyrics === null) return {};
        return {
            album: data.album,
            title: data.title,
            lyrics: prepLyrics(data.lyrics),
        };
    });
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

    fs.writeFile(filepath, JSON.stringify(data), 'utf-8', err => console.log(err));
};

albums.forEach(album => {
    const $lyrics = album.songs.map(fetchYeezyLyrics);
    const formattedTitle = snakeCase(album.title.toLowerCase());

    Promise.all($lyrics)
    .then(convertLyricsBlockToLines)
    .then(createLyricsDirectory)
    .then(data => writeLyricFiles(formattedTitle, data.dir, data.data))
    .catch(console.log);
});
