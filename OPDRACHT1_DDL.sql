select * from Movie
go
use master
go

go
drop database FletNix;
go

go
create database FletNix;
go

go
use FletNix;
go


--creating the tables
--declaration: identity primary key, maakt automatisch IDs aan 

create table Person
(
--creating columns
	person_id int NOT NULL,
	lastname varchar(50) NOT NULL,
	firstname varchar(50) NOT NULL,
	gender char(1) NULL,
	
	--creating constraints
	constraint pk_person primary key (person_id),
	constraint ak_gender check(gender = 'M' OR gender = 'F')

)

create table Movie
(
	--creating the columns
	movie_id int NOT NULL,
	title varchar(255) NOT NULL,
	duration int NULL,
	[description] varchar(255) NULL, 
	publication_year int NULL,
	cover_image VARBINARY NULL,
	previous_part int NULL,
	price numeric(5,2) NOT NULL,
	[URL] varchar(255) NULL
		
		--creating constraints
		constraint pk_movie primary key (movie_id),

		constraint fk_movie_id_previous_part foreign key (previous_part) references movie(movie_id)
		on delete no action
		on update no action, 

/*		constraint ak_Movie_duration check(duration > 0), constraint ak_Movie_title unique(title),		Constraints werken niet met de IMDB database*/

		constraint ak_Movie_price check(price > 0)


)

create table Movie_cast
(	
	--creating the columns
	movie_id int NOT NULL,
	person_id int NOT NULL,
	[role] varchar(255) NOT NULL,

		--creating constraints
		constraint pk_Movie_cast primary key (movie_id,person_id,[role]),

		constraint 	fk_Movie_cast_person_id foreign key (person_id) references Person(person_id)
		on update cascade
		on delete cascade,
		
		constraint	fk_Movie_cast_movie_id foreign key (movie_id) references Movie(movie_id)
		on update cascade
		on delete cascade

) 

create table Movie_director
(
	--creating coloms
	movie_id int NOT NULL,
	person_id int NOT NULL,

		--creating constraints
		constraint pk_movie_director primary key (movie_id,person_id),

		constraint fk_Movie_director_person_id foreign key (person_id)  references Person(person_id)
		on update cascade
		on delete cascade

)

create table genre
(
	--creating columns
	genre_name varchar(255) NOT NULL,
	[description] varchar(255) NULL, 

		--creating constraints
		constraint pk_genre primary key (genre_name)
)

create table Movie_genre
(
	--creating the columns
	movie_id int NOT NULL, 
	genre_name varchar(255) NOT NULL

		--creating constraints
		constraint pk_movie_genre primary key (movie_id,genre_name),

		constraint fk_Movie_genre_movie_id foreign key (movie_id) references Movie(movie_id)
		on update cascade
		on delete cascade,
		
		constraint fk_Movie_genre_genre_name foreign key (genre_name) references genre(genre_name)
		on update cascade
		on delete cascade
	)

create table country
(
	--creating columns
	country_name varchar(50) NOT NULL

		--creating constraints
		constraint pk_country primary key (country_name) 
)

create table Customer 
(
	--creating columns
	customer_mail_adres varchar(255) NOT NULL,
	[name] varchar(255) NOT NULL,
	paypal_account varchar(255) NOT NULL,
	subscription_start date NOT NULL,
	subscription_end date NULL,
	[password] varchar(50) NOT NULL,
	country_name varchar(50) NOT NULL 

		--creating constriants
		constraint pk_customer primary key (customer_mail_adres),

		constraint fk_Customer_country_name foreign key (country_name) references country(country_name)
		on update cascade
		on delete cascade,

		constraint ak_Customer_subscription_start check(subscription_start < subscription_end),
		constraint ak_Customer_paypal_account unique(paypal_account)
)

create table Watch_history
(
	--creating the colums
	movie_id int NOT NULL,
	customer_mail_adres varchar(255)  NOT NULL,
	watch_date date NOT NULL,
	price numeric(5,2) NOT NULL 

		--creating constraints
		constraint pk_watch_history primary key (movie_id,customer_mail_adres,watch_date),

		constraint fk_Watch_history_Movie_id foreign key (movie_id) references Movie(movie_id)
		on update cascade
		on delete no action,
		
		constraint fk_Watch_history_customer_mail_adres foreign key (customer_mail_adres) references Customer(customer_mail_adres)
		on update cascade
		on delete no action
		
)

select * from Movie