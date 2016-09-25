select text from lyrics where song_id=${songId}
and line_number between ${min} and ${max}
order by line_number;
