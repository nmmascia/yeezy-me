CREATE TABLE songs (
    id integer NOT NULL UNIQUE,
    title varchar(255) NOT NULL,
    album_id integer NOT NULL references albums(id),
    PRIMARY KEY(id)
);
