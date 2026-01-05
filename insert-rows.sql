INSERT INTO A01468635_movie (movie_id, title, release_year, director, genre, description) 
VALUES 
(1, 'Harry Potter and the Philosopher''s Stone', 2001, 'Chris Columbus', 'Fantasy',
 'Harry begins his magical journey at Hogwarts.'),
(2, 'Harry Potter and the Chamber of Secrets', 2002, 'Chris Columbus', 'Fantasy',
 'A monster is unleashed inside Hogwarts, and Harry races to uncover the culprit.'),
(3, 'Harry Potter and the Prisoner of Azkaban', 2004, 'Alfonso Cuarón', 'Fantasy',
 'An escaped prisoner appears to be hunting Harry while dark creatures roam the school.'),
(4, 'Harry Potter and the Goblet of Fire', 2005, 'Mike Newell', 'Fantasy',
 'Harry is forced into the dangerous Triwizard Tournament and faces deadly challenges.'),
(5, 'Harry Potter and the Order of the Phoenix', 2007, 'David Yates', 'Fantasy',
 'Harry forms Dumbledore’s Army as the Ministry denies Voldemort’s return.');


INSERT INTO A01468635_movie_review (review_id, movie_id, review_date, review_text, review_time, rating, views)
VALUES 
-- Movie 1
(1, 1, '2025-11-01', 'A magical and charming start to the series.', '10:05:00', 5, 120),
(2, 1, '2025-11-02', 'Great introduction to the world and characters.', '14:22:00', 5, 95),
(3, 1, '2025-11-03', 'Still enjoyable after so many years.', '18:11:00', 5, 80),
(4, 1, '2025-11-04', 'The visuals aged but the story is timeless.', '12:40:00', 4, 62),
(5, 1, '2025-11-05', 'Perfect for younger audiences and nostalgic fans.', '16:55:00', 5, 140),

-- Movie 2
(6, 2, '2025-11-01', 'Darker and more mysterious than the first film.', '09:12:00', 4, 88),
(7, 2, '2025-11-02', 'The Basilisk and diary reveal were great.', '13:30:00', 5, 72),
(8, 2, '2025-11-03', 'Solid pacing with strong suspense.', '17:18:00', 4, 66),
(9, 2, '2025-11-04', 'Tom Riddle’s backstory was a highlight.', '20:05:00', 4, 75),
(10, 2, '2025-11-05', 'A bit long, but still exciting.', '11:26:00', 4, 59),

-- Movie 3
(11, 3, '2025-11-01', 'My favorite film — great tone and cinematography.', '08:25:00', 5, 160),
(12, 3, '2025-11-02', 'Beautiful direction and strong emotional beats.', '14:50:00', 5, 130),
(13, 3, '2025-11-03', 'Time-travel scenes were amazing.', '18:40:00', 4, 112),
(14, 3, '2025-11-04', 'The Dementors were genuinely scary.', '21:17:00', 4, 90),
(15, 3, '2025-11-05', 'Elevated the entire series creatively.', '10:58:00', 5, 175),

-- Movie 4
(16, 4, '2025-11-01', 'High-stakes tournament and intense challenges.', '09:42:00', 4, 140),
(17, 4, '2025-11-02', 'The Yule Ball scenes were charming.', '13:59:00', 4, 100),
(18, 4, '2025-11-03', 'Voldemort’s return scene is unforgettable.', '19:20:00', 4, 150),
(19, 4, '2025-11-04', 'Some plot points felt rushed.', '11:34:00', 4, 85),
(20, 4, '2025-11-05', 'Strong performances and great action.', '17:48:00', 4, 138),

-- Movie 5
(21, 5, '2025-11-01', 'Umbridge is the most effective villain.', '10:15:00', 4, 115),
(22, 5, '2025-11-02', 'Loved the Dumbledore’s Army training scenes.', '15:33:00', 4, 90),
(23, 5, '2025-11-03', 'Strong emotional core and character growth.', '18:22:00', 4, 105),
(24, 5, '2025-11-04', 'The Ministry battle was visually amazing.', '21:58:00', 4, 120),
(25, 5, '2025-11-05', 'A slower pace but very meaningful story.', '12:47:00', 4, 78);


SELECT * FROM A01468635_movie;
SELECT * FROM A01468635_movie_review;
show tables;
show databases;
DROP table A01468635_movie;
DROP table A01468635_movie_review;