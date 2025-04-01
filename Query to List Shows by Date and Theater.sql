SELECT 
    m.title AS Movie_Title,
    GROUP_CONCAT(DATE_FORMAT(s.start_time, '%h:%i %p') AS Show_Times
FROM Show s
JOIN Theater t ON s.theater_id = t.theater_id
JOIN Movie m ON s.movie_id = m.movie_id
WHERE 
    t.name = 'Nexus iFor' AND 
    s.date = '2023-04-25'
GROUP BY m.movie_id
ORDER BY m.title;