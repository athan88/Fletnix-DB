go
use FletNix
go 

select* from Movie_genre

--A.	Alle films gesorteerd naar genre [movie title, publication year, genre]

select Movie.title ,Movie.publication_year, Movie_genre.genre_name
from Movie inner join Movie_genre on
Movie.movie_id = Movie_genre.movie_id
order by Movie_genre.genre_name 

--B.	  Alle movies die tussen 1990 en 2010 geproduceerd zijn.

select Movie.movie_id,  Movie.title, Movie.publication_year
from Movie
where Movie.publication_year > '12-31-1989' and Movie.publication_year < '1-1-2011' 
order by Movie.title

--C.	 Alle klanten die op dit moment actief zijn (i.e. subscription_end moet leeg zijn) [customer name, subscription_start]

select Customer.[name], Customer.subscription_start
from Customer
where subscription_end is null OR subscription_end <= getdate()
order by Customer.[name]

--D.	 De cast uit alle Terminator movies “” uit het jaar 1991 [id, title, firstname, lastname, role]

select Movie_cast.person_id, Movie.title, person.firstname, person.lastname, Movie_cast.[role] 
from Movie join Movie_cast
on Movie_cast.movie_id = Movie.movie_id
join Person 
on Person.person_id = Movie_cast.person_id
where Movie.title like '%Terminator%' AND Movie.publication_year = 1991


/*testscript*/
select * 
from 
Movie

insert Movie 
values
(1, 'The Terminator 2', 122, 'Description of the Terminator 2', 1991, NULL, NULL, 10, 'URL of Terminator 2')

--Person
select* 
from 
Person

insert Person
values
(1, 'Schwarzenegger', 'Arnold', 'M')

--Cast
select *
from 
Movie_cast

insert Movie_cast
values
(1, 1, 'The Terminator')

--E.	 Alle movies waarin de acteur "Arnold Schwarzenegger" een rol speelt [movie title, publication year]

select Movie.title, Movie.publication_year
from Movie join Movie_cast
on Movie_cast.movie_id = Movie.movie_id
join person
on Movie_cast.person_id = Person.person_id 
where Person.firstname = 'Arnold' and Person.lastname = 'Schwarzenegger'

--F.	 Alle gebruikers met openstaande kosten [Customer name, total price]

create view OpenstaandeKosten (Customer_name, total_price)
as
select Customer.name, sum(Watch_history.price)
from Customer join Watch_history
on Customer.customer_mail_adres = Watch_history.customer_mail_adres
group by Customer.[name]


select * 
from OpenstaandeKosten

--G.	 Toon 100 movies die tot nu toe het minst bekeken zijn, gesorteerd naar het aantal keren dat ze gekeken werden. 
--Dit houdt ook 0 keer in [Movie title, number of times watched]

create view leastwatched (Movie_title, number_of_times_watched)
as 
select top 100	 Movie.title, count(*)
from			 Movie right outer join Watch_history
on				 Movie.movie_id = Watch_history.movie_id
group by		 Movie.title
order by		 2

select*
from leastwatched

--H.	Alle movies die in de afgelopen twee weken het meest bekeken zijn, gesorteerd naar het aantal keren dat ze gekeken werden. 
-- Toon alleen movies die minimaal een keer bekeken zijn [movie title, publication_year, number of times watched].

create view mostwatched (movie_title, publication_year, number_of_times_watched)
as
select		Movie.title, Movie.publication_year, count(*) as 'Number of times watched'
from		Movie join Watch_history
on			Movie.movie_id = Watch_history.movie_id
where		Watch_history.watch_date <= getdate() and Watch_history.watch_date >= dateadd(week, -2 ,getdate())
group by	Movie.title, Movie.publication_year
order by	3 desc


--I.	Alle movies die meer dan 8 genres hebben [title, publication_year]

select Movie.title, Movie.publication_year
from Movie join Movie_genre
on Movie.movie_id = Movie_genre.movie_id
where Movie_genre.movie_id in(

		select Movie_genre.movie_id
		from   Movie_genre
		group by Movie_genre.movie_id
		having count(*) >= 8

)

--J.	Alle vrouwen die in Horror movies en Family movies gespeeld hebben [firstname,lastname] 

select	 Person.firstname, Person.lastname
from	 Movie_genre join Movie_cast
on		 Movie_genre.movie_id = Movie_cast.movie_id join Person
on		 Person.person_id = Movie_cast.person_id
where	 Movie_genre.genre_name = 'Horror' AND Person.person_id in

(

		select	Person.person_id 
		from	Movie_genre join Movie_cast
		on		Movie_genre.movie_id = Movie_cast.movie_id join Person
		on		Person.person_id = Movie_cast.person_id
		where	Movie_genre.genre_name = 'Family' AND Person.gender='F'

)


--K.	De director die tot nu toe de meeste films geproduceerd heeft [firstname, lastname].

select person.firstname, person.lastname
from Person
where Person.person_id in (

select top	1	Movie_director.person_id, count(Movie_id)
from			Movie_director
group by		Movie_director.person_id
order by		2 desc

)

-- L.	Alle Genres en het percentage dat de films uit het bepaalde genre uitmaken t.o.v. het totale aantal films [genre, percentage]
-- gesorteerd op meest populaire genre.
-- Maak een View voor deze informatiebehoefte. Je mag ook eerst één of meerdere (hulp-)views maken om de informatiebehoefte op te lossen.'



--M.	Gebruikers [mail_adress] en het gemiddelde aantal films die elke gebruiker per dag kijkt. 
--Toon alleen gebruikers die gemiddeld 2 of meer films per dag kijken.
--Maak een View voor deze informatiebehoefte. Je mag ook eerst één of meerdere (hulp-)views maken om de informatiebehoefte op te lossen.
