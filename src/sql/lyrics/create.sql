CREATE TABLE lyrics (
    id integer NOT NULL UNIQUE,
    text varchar(255) NOT NULL,
    line_number integer NOT NULL,
    song_id integer NOT NULL references songs(id),
    PRIMARY KEY(id)
);
