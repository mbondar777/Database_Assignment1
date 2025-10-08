INSERT INTO movies (movie_id, title, release_year, country, genre) VALUES
(1, 'Twilight', 2008, 'United States', 'Romance'),
(2, 'Vampire Diaries', 2009, 'United States', 'Drama'),
(3, 'Pretty Little Liars', 2010, 'United States', 'Drama'),
(4, 'Teen Wolf', 2011, 'United States', 'Supernatural thriller'),
(5, 'The Originals', 2013, 'United States', 'Drama'),
(6, 'Supernatural', 2005, 'United States', 'Action'),
(7, 'American Horror Story', 2011, 'United States', 'Horror');

INSERT INTO persons (person_id, name, birth_year, country) VALUES
(1, 'Robert Pattinson', 1986, 'United Kingdom'),
(2, 'Catherine Hardwicke', 1955, 'United States'), 
(3, 'Melissa Rosenberg', 1962, 'United States'),

(4, 'Ian Somerhalder', 1978, 'United States'),
(5, 'Nina Dobrev', 1989, 'Bulgaria'),
(6, 'Caroline Dries', 1980, 'United States'), 

(7, 'Ina Marlene King', 1962, 'Germany'), 
(8, 'Lucy Hale', 1989, 'United States'), 
(9, 'Shay Mitchell', 1987, 'Canada'),

(10, 'Jeff Davis', 1975, 'United States'), 
(11, 'Crystal Reed', 1985, 'United States'),

(12, 'Ahmed Mourad', 1978, 'Egypt'), 
(13, 'Marwan Hamed', 1977, 'Egypt'), 

(14, 'Jared Padalecki', 1982, 'United States'),
(15, 'Jensen Ackles', 1978, 'United States'),

(16, 'Ryan Murphy', 1965, 'United States'), 
(17, 'Fabienne Bouville', 1969, 'France'), 
(18, 'Sarah Paulson', 1974, 'United States');

INSERT INTO roles (role_id, movie_id, person_id, role_name) VALUES
(1, 1, 1, 'Actor'),
(2, 1, 2, 'Director'),
(3, 1, 3, 'Screenwriter'),
(4, 2, 4, 'Actor'),
(5, 2, 5, 'Actress'),
(6, 2, 6, 'Producer'),
(7, 3, 7, 'Director'),
(8, 3, 8, 'Actress'),
(9, 3, 9, 'Actress'),
(10, 4, 10, 'Writer'),
(11, 4, 11, 'Actress'),
(12, 5, 12, 'Screenwriter'),
(13, 5, 13, 'Director'),
(14, 6, 14, 'Actor'),
(15, 6, 15, 'Actor'),
(16, 7, 16, 'Producer'),
(17, 7, 17, 'Editor'),
(18, 7, 18, 'Actress');

INSERT INTO users (user_id, username, country) VALUES
(1, 'Maryna', 'Ukraine'),
(2, 'Sarah', 'United Kingdom'),
(3, 'John', 'Canada'),
(4, 'Oleksandr', 'Ukraine'),
(5, 'Sophia', 'Bulgaria'),
(6, 'Zara', 'Poland'),
(7, 'Edward', 'United States');

INSERT INTO ratings (rating_id, movie_id, user_id, rating) VALUES
(1, 1, 1, 9.7),
(2, 1, 2, 6.4),
(3, 1, 3, 8.7),

(4, 2, 4, 5.0),
(5, 2, 5, 8.9),
(6, 2, 6, 10.0),

(7, 3, 7, 4.7),
(8, 3, 1, 9.0),
(9, 3, 2, 6.9),

(10, 4, 3, 8.0),
(11, 4, 4, 7.5),
(12, 4, 5, 3.9),

(13, 5, 6, 4.0),
(14, 5, 7, 7.8),
(15, 5, 1, 5.5),

(16, 6, 2, 8.3),
(17, 6, 3, 5.4),
(18, 6, 4, 9.9),

(19, 7, 5, 2.1),
(20, 7, 6, 7.8),
(21, 7, 7, 3.3);