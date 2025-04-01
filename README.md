# Problem-Solving-Case---BookMyShow

Database Design and SQL Queries
Entities and Attributes:
Theater
theater_id (INT, PK)
name (VARCHAR(255))
address (VARCHAR(255))

Movie
movie_id (INT, PK)
title (VARCHAR(255))
language (VARCHAR(50))
format (VARCHAR(10))
rating (VARCHAR(10))

Show
show_id (INT, PK)
theater_id (INT, FK references Theater)
movie_id (INT, FK references Movie)
date (DATE)
start_time (TIME)
Unique constraint: (theater_id, date, start_time)