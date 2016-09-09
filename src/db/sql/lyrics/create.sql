create table lyrics (
    id serial,
    text varchar(255) not null,
    line_number integer not null,
    song_id integer not null references songs(id),
    primary key(id)
);
