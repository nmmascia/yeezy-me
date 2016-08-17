create table songs (
    id serial,
    title varchar(255) not null,
    album_id integer not null references albums(id),
    primary key(id)
);
