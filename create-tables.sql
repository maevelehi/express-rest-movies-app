
CREATE TABLE A01468635_movie (
  movie_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  release_year YEAR,
  director VARCHAR(255),
  genre VARCHAR(100),
  description TEXT
);

CREATE TABLE A01468635_movie_review (
  review_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  movie_id int,
  review_date DATE,
  review_text TEXT,
  review_time TIME,
  rating int,
  views int,
  FOREIGN KEY (movie_id) REFERENCES A01468635_movie(movie_id)
);

SELECT * FROM user;
show tables;