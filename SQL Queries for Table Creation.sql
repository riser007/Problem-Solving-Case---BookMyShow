-- Create Theater Table
CREATE TABLE Theater (
    theater_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255)
);

-- Create Movie Table
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    language VARCHAR(50),
    format VARCHAR(10),
    rating VARCHAR(10)
);

-- Create Show Table
CREATE TABLE Show (
    show_id INT PRIMARY KEY,
    theater_id INT,
    movie_id INT,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    FOREIGN KEY (theater_id) REFERENCES Theater(theater_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    UNIQUE KEY (theater_id, date, start_time)
);