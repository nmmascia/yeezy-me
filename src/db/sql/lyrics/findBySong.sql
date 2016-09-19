select * from lyrics where song_id=${songId}
order by random()
limit 1;
