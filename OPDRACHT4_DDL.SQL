use FletNix

drop table awards
drop table [event]
drop table code

/*createscript*/

create table code (

code char NOT NULL,
won_or_nominated varchar(255) NOT NULL,

constraint pk_code primary key (code)
)


create table [event](

event_title varchar(255) NOT NULL,
[year] int NOT NULL,
place varchar(50) NOT NULL,

constraint pk_event primary key (event_title,[year]),
constraint fk_event_place foreign key (place) references country(country_name),
)

create table awards (

[event] varchar(255) NOT NULL,
[year] int NOT NULL,
category varchar(255) NOT NULL,
movie_id int NOT NULL,
person_id int NOT NULL,
code char NOT NULL,

constraint pk_awards primary key ([event],[year],category,movie_id,person_id),
constraint fk_awards_event foreign key ([event],[year]) references [event](event_title,[year]),
constraint fk_awards_movie_id foreign key (movie_id) references movie(movie_id),
constraint fk_awards_person_id foreign key (person_id) references person(person_id),
constraint fk_awards_code foreign key (code) references code(code),
)


/*insertscript*/
insert into code
values 
('W','Won'),
('N','Nominated')


/*

OPTIONAL, ADDS COUNTRIES

*/


insert into country
values
('The Netherlands'),
('New Zealand')


/**/


insert into [event]
values 
('Academy Awards',2000,'The Netherlands'),
('BAFTA Awards', 2000, 'New Zealand') 


insert into awards
values
('Academy Awards', 2000, 'Best Film Editing', 207992, 550813, 'W'),
('Academy Awards', 2000, 'Best Film Editing', 160492, 276884, 'N'),
('Academy Awards', 2000, 'Best Film Editing', 160492, 95001, 'N'),
('Academy Awards', 2000, 'Best Film Editing', 160492, 68042, 'N'),
('Academy Awards', 2000, 'Best Film Editing', 303564, 54796, 'N'),
('Academy Awards', 2000, 'Best Sound Effects Editing', 112290, 351397, 'N'),
('Academy Awards', 2000, 'Best Sound Effects Editing', 112290, 950002, 'N'),
('Academy Awards', 2000, 'Best Sound Effects Editing', 207992, 950003, 'W'),
('Academy Awards', 2000, 'Best Sound Effects Editing', 313474, 165453, 'N'),
('Academy Awards', 2000, 'Best Visual Effects', 313474, 191712, 'N'),
('Academy Awards', 2000, 'Best Visual Effects', 207992, 950004, 'W'),
('Academy Awards', 2000, 'Best Visual Effects', 207992, 540853, 'W'),
('Academy Awards', 2000, 'Best Visual Effects', 207992, 950005, 'W'),
('Academy Awards', 2000, 'Best Visual Effects', 207992, 950006, 'W'),
('BAFTA Awards', 2000, 'Best Sound', 207992, 950007, 'W'),
('BAFTA Awards', 2000, 'Best Sound', 207992, 950008, 'W'),
('BAFTA Awards', 2000, 'Best Sound', 207992, 950009, 'W'),
('BAFTA Awards', 2000, 'Best Sound', 207992, 9500010, 'W'),
('BAFTA Awards', 2000, 'Best Sound', 207992, 9500011, 'W'),
('BAFTA Awards', 2000, 'Best Sound', 313474, 165453, 'N'),
('BAFTA Awards', 2000, 'Best Sound', 313474, 950012, 'N'),
('BAFTA Awards', 2000, 'Best Sound', 313474, 950013, 'N'),
('BAFTA Awards', 2000, 'Best Cinematography', 207992, 950014, 'W'),
('BAFTA Awards', 2000, 'Best Cinematography', 13798, 950015, 'W'),
('BAFTA Awards', 2000, 'Best Production Design', 207992, 465716, 'N'),
('BAFTA Awards', 2000, 'Best Production Design', 304862, 303143, 'W'),
('BAFTA Awards', 2000, 'Best Editing', 207992, 550813, 'N'),
('BAFTA Awards', 2000, 'Best Editing', 13789, 950016, 'W'),
('BAFTA Awards', 2000, 'Best Editing', 13789, 283753, 'W')





