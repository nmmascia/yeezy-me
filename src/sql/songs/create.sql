CREATE TABLE songs (
    id SERIAL,
    title varchar(255) NOT NULL,
    album_id integer NOT NULL references albums(id),
    PRIMARY KEY(id)
);
