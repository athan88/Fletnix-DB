
use master
--person 1

INSERT into Fletnix.dbo.Person
SELECT 
		CAST(id AS int)		AS person_id,
		LEFT(Lname,50)		AS lastname,
		LEFT(Fname,50)		AS firstname,
		NULL				AS gender

FROM MYIMDB.dbo.Imported_directors

--person 2
Insert into FletNix.dbo.Person

select 
		id + 88801			AS person_id,
		FName				AS firstname, 
		Lname				AS lastname,
		gender				AS gender

From MYIMDB.dbo.Imported_Person

--Movie
INSERT into Fletnix.dbo.Movie
SELECT  
		CAST(Id AS int)										AS movie_id,
		LEFT(Name,254)										AS title,
		NULL												AS duration,
		'description of ' + Id								AS descripton,
		convert(int ,[Year])								AS publication_year, 
		NULL												AS cover_image, 
		NULL												AS previous_part, 
		5.0													AS price,
		Id													AS [URL]

FROM MYIMDB.dbo.Imported_Movie

--Genre
insert  Fletnix.dbo.Genre

select  distinct 

		left(Genre,255)					as genre_name,
        null							as [description]

from    MYIMDB.dbo.Imported_Genre

--Movie_Genre
INSERT INTO FletNix.dbo.Movie_genre
SELECT DISTINCT

		cast(MYiMDB.dbo.Imported_Genre.Id AS int)			AS movie_id,
		left(Genre,255)										AS genre_name


FROM MYIMDB.dbo.Imported_Genre
INNER JOIN MYIMDB.dbo.Imported_Movie
ON MYIMDB.dbo.Imported_Movie.Id = MYIMDB.dbo.Imported_Genre.Id

--cast


INSERT INTO FletNix.dbo.Movie_cast

SELECT DISTINCT

cast(Mid as int)					AS	movie_id,
cast(Pid + 88801 as int)			AS  person_id,
[Role]								AS  [role]



FROM MYIMDB.dbo.Imported_Cast 
INNER JOIN MYIMDB.dbo.Imported_Movie 
ON MYIMDB.dbo.Imported_Movie.Id = MYIMDB.dbo.Imported_Cast.Mid


select * from FletNix.dbo.Movie

