/* testscript voor constraints van opdracht 1 B en C */

go
use FletNix
go

--Het geslacht van een person moet 'F' of 'M' zijn
delete from Person

/*correct*/
INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (8, 'Hamilton', 'Linda', 'F')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (9, 'Biehn', 'Michael', 'M')

/*incorrect*/
INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (8, 'Hamilton', 'Linda', 'A')

INSERT INTO Person (person_id, lastname, firstname, gender)
VALUES (9, 'Biehn', 'Michael', 'C')



--het publication year moet tussen 1890 en het huidige jaar zijn
delete from Movie


/*correct*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2017, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')

/*incorrect*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1870, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2018, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')


--De aanmelddatum (subscription_start) van een klant (Customer) mag niet na de datum van afmelding (subscription_end) zijn
go
delete from Customer
go


select * from Customer
select * from country
/*correct*/
go
insert into country
values
('Netherlands'),
('United Kingdom'),
('Germany'),
('Belgium'),
('Luxembourgh'),
('Denmark'),
('France'),
('United States'),
('Norway'),
('Sweden'),
('Finland'),
('Spain'),
('Italy')
go

/*correct*/
go
insert into Customer
values
('testuser1@test.com', 'test1', 'testpaypal1', '12-1-2016', '12-5-2016', 'testpwd1', 'Netherlands'),
('testuser2@test.com', 'test2', 'testpaypal2', '10-1-2017', NULL, 'testpwd2', 'Germany')
go

/*incorrect*/
go
insert into Customer
values
('testuser1@test.com', 'test1', 'testpaypal1', '12-1-2016', '12-5-2015', 'testpwd1', 'Netherlands'),
('testuser2@test.com', 'test2', 'testpaypal2', '10-1-2017', NULL, 'testpwd2', 'Germany')
go

--Het paypal_account van een klant (Customer) moet uniek zijn.
go
delete from Customer
go


select * from Customer
select * from country
/*correct*/
go
insert into country
values
('Netherlands'),
('United Kingdom'),
('Germany'),
('Belgium'),
('Luxembourgh'),
('Denmark'),
('France'),
('United States'),
('Norway'),
('Sweden'),
('Finland'),
('Spain'),
('Italy')
go

/*correct*/
go
insert into Customer
values
('testuser1@test.com', 'test1', 'testpaypal1', '12-1-2016', '12-5-2016', 'testpwd1', 'Netherlands'),
('testuser2@test.com', 'test2', 'testpaypal2', '10-1-2017', NULL, 'testpwd2', 'Germany')
go

/*incorrect*/
go
insert into Customer
values
('testuser1@test.com', 'test1', 'testpaypal1', '12-1-2016', '12-5-2016', 'testpwd1', 'Netherlands'),
('testuser2@test.com', 'test2', 'testpaypal1', '10-1-2017', NULL, 'testpwd2', 'Germany')
go



/*
* Eigen constraints
*/


--URL moet unique zijn
go
delete from Movie
go


/*correct*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')


/*incorrect*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')


--De price moet groter zijn dan 0
go
delete from Movie
go


/*correct*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')


/*incorrect*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')


INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, 1, 0, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')


--De movie description is unique
go
delete from Movie
go


/*correct*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')

INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'Description of Matrix Reloaded, The', 2003, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')


/*incorrect*/
INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (1, 'Matrix, The', 150, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 1999, NULL, 2.50, 'https://www.youtube.com/watch?v=m8e-FF8MsqU')


INSERT INTO Movie (movie_id, title, duration, [description], publication_year, previous_part, price, [URL])
VALUES (2, 'Matrix Reloaded, The', 106, 'The Matrix is een Amerikaanse sciencefictionfilm uit 1999, onder regie van de Wachowskis.', 2003, 1, 2.50, 'https://www.youtube.com/watch?v=HVrGMnk5E_M')