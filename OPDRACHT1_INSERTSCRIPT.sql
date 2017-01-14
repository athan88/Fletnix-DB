go
use FletNix
go

go
delete from Movie
go

go
delete from Person
go

go
delete from Movie_cast
go

go
delete from Movie_director
go

go
delete from genre
go

go
delete from Movie_genre
go

go
delete from country
go

go
delete from Customer
go

go
delete from Watch_history
go










--Inserts naar "Genre"
INSERT INTO Genre (genre_name, [description])
VALUES ('science-fiction', 'Wetenschapsfictie')

INSERT INTO Genre (genre_name, [description])
VALUES ('fantasy', 'fantasie')

--Inserts naar "Movie"
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (3, 'Lord of the Rings: The Fellowship of the Ring, The', 228, 'Description of Lord of the Rings: The Fellowship of the Ring, The', 2001, NULL, 5, 'https://www.youtube.com/watch?v=Pki6jbSbXIY')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (4, 'Lord of the Rings: The Two Towers, The', 235, 'Description of Lord of the Rings: The Two Towers, The', 2002, 3, 4.99, 'https://www.youtube.com/watch?v=2dlRvAjU_RI')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (5, 'Lord of the Rings: The Return of the King, The', 201, 'Description of Lord of the Rings: The Return of the King, The', 2003, 4, 4.98, 'https://www.youtube.com/watch?v=r5X-hFf6Bwo')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (6, 'Terminator, The', 108, 'Description of Terminator, The', 1984, NULL, 1.99, 'https://www.youtube.com/watch?v=EpdAcA6ziiA')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (7, 'Terminator 2: Judgment Day', 154, 'Description of Terminator 2: Judgment Day', 1991, 6, 2.01, 'https://www.youtube.com/watch?v=lwSysg9o7wE')


--Inserts naar "Person"
INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (1, 'Reeves', 'Keanu', 'M')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (2, 'Fishburne', 'Laurence', 'M')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (3, 'Moss', 'Carrie-Anne', 'F')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (4, 'Wood', 'Elijah', 'M')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (5, 'Mortensen', 'Viggo', 'M')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (6, 'Bloom', 'Orlando', 'M')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (7, 'Schwartzenegger', 'Arnold', 'M')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (8, 'Hamilton', 'Linda', 'F')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (9, 'Biehn', 'Michael', 'M')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (10, 'Furlong', 'Edward', 'M')


--Inserts naar Movie_Cast
INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (1, 1, 'Neo')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (1, 2, 'Morpheus')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (1, 3, 'Trinity')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (2, 1, 'Neo')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (2, 2, 'Morpheus')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (2, 3, 'Trinity')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (3, 4, 'Frodo Balings')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (3, 5, 'Aragorn II')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (3, 6, 'Legolas')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (4, 4, 'Frodo Balings')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (4, 5, 'Aragorn II')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (4, 6, 'Legolas')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (5, 4, 'Frodo Balings')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (5, 5, 'Aragorn II')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (5, 6, 'Legolas')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (6, 7, 'Terminator')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (6, 8, 'Sarah Connor')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (6, 9, 'Kyle Reese')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (7, 7, 'Terminator')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (7, 8, 'Sarah Connor')

INSERT INTO Movie_cast (movie_id, person_id, role)
VALUES (7, 10, 'John Connor')

--Inserts naar Movie_genre
INSERT INTO movie_genre (movie_id, genre_name)
VALUES (1, 'science-fiction')

INSERT INTO movie_genre (movie_id, genre_name)
VALUES (2, 'science-fiction')

INSERT INTO movie_genre (movie_id, genre_name)
VALUES (3, 'fantasy')

INSERT INTO movie_genre (movie_id, genre_name)
VALUES (4, 'fantasy')

INSERT INTO movie_genre (movie_id, genre_name)
VALUES (5, 'fantasy')

INSERT INTO movie_genre (movie_id, genre_name)
VALUES (6, 'science-fiction')

INSERT INTO movie_genre (movie_id, genre_name)
VALUES (7, 'science-fiction')

go
use master
go





