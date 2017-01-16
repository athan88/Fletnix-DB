--Person insertion lorem ipsum		
--male cast
INSERT INTO Person (person_id,lastname,firstname, gender) VALUES (1,'Wong' ,'Warren', 'M'),(2,'Tucker','Dane', 'M'),(3,'Brooks','Hamish', 'M'),(4,'Nichols','Odysseus', 'M'),(5,'Savage','Randall', 'M'),(6,'Anderson','Luke', 'M'),(7,'Perez','Nathaniel', 'M'),(8,'Wilkinson','Patrick', 'M'),(9,'Curtis','Cadman', 'M'),(10,'Walsh','Calvin', 'M'),(11,'Stephenson','Rafael', 'M'),(12,'Waller','Lane', 'M'),(13,'Austin','Cooper', 'M'),(14,'Witt','Ezekiel', 'M'),(15,'Houston','Noble', 'M'),(16,'Key','Chase', 'M'),(17,'Lowe','Brock', 'M'),(18,'Roth','Damon', 'M'),(19,'Pitts','Orlando', 'M'),(20,'Rich','Emmanuel', 'M'),(21,'Livingston','Palmer', 'M'),(22,'Franco','Byron', 'M');
--female cast
INSERT INTO Person (person_id,lastname,firstname, gender) VALUES (23,'England','Quemby', 'F'),(24,'Hebert','Indira', 'F'),(25,'Alford','Melodie', 'F'),(26,'Barrett','Yvette', 'F'),(27,'Sanchez','Aurelia', 'F'),(28,'Mercado','Shelly', 'F'),(29,'Knowles','Justine', 'F'),(30,'Travis','Kaye', 'F'),(31,'Tran','Melanie', 'F'),(32,'Guerra','Jana', 'F'),(33,'Snyder','Oprah', 'F'),(34,'Walls','Grace', 'F'),(35,'Goodwin','Rhoda', 'F'),(36,'Grimes','Rebecca', 'F'),(37,'Bonner','Bo', 'F'),(38,'Ball','Hilda', 'F'),(39,'Serrano','Isabelle', 'F'),(40,'Simpson','Geraldine', 'F'),(41,'Cameron','Quyn', 'F'),(42,'Castro','Jordan', 'F'),(43,'Whitley','Alika', 'F'),(44,'Eaton','Georgia', 'F');
--directors
INSERT INTO Person (person_id,lastname,firstname, gender) VALUES (45,'Lester','Zephania', 'F'),(46,'Mercado','Kadeem', 'M'),(47,'Love','Fletcher', 'M' ),(48,'Carrillo','Martin', 'M'),(49,'Rogers','Wing', 'M');


--Movie insertion lorem ipsum
INSERT INTO Movie (movie_id,title,duration,publication_year,price) VALUES (1,'cubilia Curae; Donec',218,1980,4.06),(2,'Quisque ac libero nec',156,1961,3.07);
INSERT INTO Movie (movie_id,title,duration,publication_year,price) VALUES (3,'consequat purus.',215,1954,1.04),(4,'aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare',183,1999,6.60),(5,'Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus',210,1988,9.05),(6,'tempus risus. Donec egestas. Duis',152,1956,1.10),(7,'augue, eu tempor erat neque non',237,1974,0.67);
INSERT INTO Movie (movie_id,title,duration,publication_year,price) VALUES (8,'arcu. Nunc',116,2008,3.46),(9,'Aenean gravida nunc sed pede. Cum sociis',196,1934,4.37),(10,'Etiam laoreet, libero et tristique pellentesque, tellus',195,1969,9.87),(11,'porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin',136,1995,4.64),(12,'penatibus et',249,1973,0.30);
INSERT INTO Movie (movie_id,title,duration,publication_year,price) VALUES (13,'nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus',164,2015,3.49),(14,'Sed neque. Sed',196,2006,4.49),(15,'morbi tristique senectus et netus et malesuada fames ac turpis',119,1889,5.06),(16,'Phasellus in felis. Nulla tempor',230,1987,6.14),(17,'urna. Nullam lobortis',201,1988,4.24);
INSERT INTO Movie (movie_id,title,duration,publication_year,price) VALUES (18,'Sed id risus',222,2005,1.15),(19,'ac, eleifend vitae, erat. Vivamus',180,1996,1.36),(20,'id enim. Curabitur',120,1970,5.13),(21,'purus. Duis elementum',125,1964,2.56),(22,'Proin dolor. Nulla semper tellus id nunc interdum feugiat.',234,2008,9.52);


--Movie_cast insertion lorem ipsum
INSERT INTO Movie_cast (movie_id, person_id,role) VALUES (1, 1,'Azalia G. Wilkerson'),(1, 2,'Donna S. Mooney' ),(2, 3,'Anika Q. Bass'),(2, 4,'Madeline U. Sherman'),(3, 5,'William F. Le'),(3, 6,'Cara Y. Tyler'),(4, 7,'Emily D. Baker'),(4, 8,'India C. Hayden'),(5, 9,'Finn A. Douglas'),(5, 10,'Vanna M. Sharp'),(6, 11,'Eleanor D. Christian');
INSERT INTO Movie_cast (movie_id, person_id,role) VALUES (6, 12,'Skyler W. Shepard'),(7, 13,'Camden P. Snyder'),(7, 14,'Odette E. Lott'),(8, 15,'Jarrod B. Craig'),(8, 16,'Callum Z. Phillips'),(9, 17,'Natalie I. Santos'),(9, 18,'Andrew J. Byrd'),(10, 19,'Garrison H. Burt'),(10, 20,'Zane S. Bean'),(11, 21,'Christopher J. Buck'),(11, 22,'Renee E. Huffman');
INSERT INTO Movie_cast (movie_id, person_id,role) VALUES (12, 23,'Madeson C. Phillips'),(12, 24,'Sybil T. Dale'),(13, 25,'Ulric N. Tillman'),(13, 26,'Michael K. Fleming'),(14, 27,'Cheyenne D. Best'),(14, 28,'Geraldine V. Crawford'),(15, 29,'Charissa Y. Gregory'),(15, 30,'Constance U. Rosario'),(16, 31,'Aaron B. Ortega'),(16, 32,'Allen I. Guerra'),(17, 33,'Fuller B. Bush');
INSERT INTO Movie_cast (movie_id, person_id,role) VALUES (17, 34,'Jesse Y. Reilly'),(18, 35,'Zachery L. Rutledge'),(18, 36,'Hayley T. Travis'),(19, 37,'Tara Q. Cain'),(19, 38,'Warren O. Snyder'),(20, 39,'Nell E. Mendez'),(20, 40,'Skyler O. Fields'),(21, 41,'Aristotle O. Bradshaw'),(21, 42,'Halee U. Callahan'),(22, 43,'Dillon V. Silva'),(22, 44,'Ignatius M. Fischer');


--Movie_director insertion lorem ipsum
INSERT INTO Movie_director (movie_id,person_id) VALUES (1,45),(2,45),(3,45),(4,45),(5,46),(6,46),(7,46),(8,46),(9,47),(10,47),(11,47);
INSERT INTO Movie_director (movie_id,person_id) VALUES (12,47),(13,48),(14,48),(15,48),(16,48),(17,49),(18,49),(19,49),(20,49),(21,49),(22,49);


--genre insertion lorem ipsum
INSERT INTO genre (genre_name) VALUES ('Action'),('Adventure'),('Comedy'),('Crime'),('Drama'),('Fantasy'),('Historical'),('Horror'),('Mystery'),('Paranoid'),('Philosophical');
INSERT INTO genre (genre_name) VALUES ('Political'),('Romance'),('Saga'),('Satire'),('Science Fiction'),('Thriller'),('Urban'),('Western'),('Animation'),('Live-action scripted'),('Live-action unscripted');


--Movie_genre insertion lorem ipsum
INSERT INTO Movie_genre (movie_id,genre_name) VALUES (1,'Action'),(2,'Comedy'),(3,'Science Fiction'),(4,'Horror'),(5,'Action'),(6,'Horror'),(7,'Mystery'),(8,'Animation'),(9,'Animation'),(10,'Action'),(11,'Fantasy');
INSERT INTO Movie_genre (movie_id,genre_name) VALUES (12,'Crime'),(13,'Action'),(14,'Science Fiction'),(15,'Adventure'),(16,'Science Fiction'),(17,'Adventure'),(18,'Animation'),(19,'Mystery'),(20,'Action'),(21,'Comedy'),(22,'Comedy');


--country insertion lorem ipsum
INSERT INTO country (country_name) VALUES ('Netherlands'),('Germany'),('United Kingdom'),('France'),('Spain'),('United States'),('Canada'),('Chile'),('Nigeria'),('Brazil');


--Customer insertion lorem ipsum
INSERT INTO Customer (customer_mail_adres,name,paypal_account,subscription_start,subscription_end,password,country_name) VALUES ('semper.egestas@arcu.co.uk','Isaiah Deleon','Britanni Z. May','2015-04-07 14:33:11','2016-02-05 00:43:36','malesuada','Germany'),('Proin.non@accumsan.edu','Sybill Knowles','Hu Q. Lawson','2015-09-09 05:34:23','2018-09-11 22:12:16','magnis','Nigeria'),('ac@consequat.net','Aimee Kelley','Ina L. Robles','2015-01-25 02:16:06','2017-03-01 23:22:56','ipsum.','Chile'),('magna.tellus.faucibus@infelisNulla.net','Reece Price','Jemima D. Kim','2015-03-03 06:15:02','2018-11-02 01:12:08','consectetuer','France'),('vitae.risus.Duis@sapienimperdietornare.ca','Xerxes Beck','Basia F. Hammond','2015-03-05 02:45:59','2017-10-07 10:06:24','pede.','France'),('ac@Morbi.ca','Kennan Bauer','Lucy N. Bradley','2015-10-06 00:57:15','2016-06-10 18:11:18','magna.','Netherlands'),('sollicitudin@dui.com','Lana Watson','Grant V. Lane','2015-01-31 03:42:37','2017-12-24 14:31:23','consequat','France'),('posuere.at@arcuiaculis.ca','Byron Jennings','Lacota W. Romero','2015-03-04 21:54:23','2016-07-21 19:51:22','pharetra','United Kingdom'),('ante.dictum@sit.co.uk','Alfonso Rosa','Ulysses H. Rowe','2015-04-24 20:44:19','2018-05-17 20:04:03','nec','Brazil'),('eu.accumsan.sed@et.org','Randall Haney','Nola Q. Arnold','2015-03-02 12:34:47','2016-12-02 17:21:50','elit','Chile'),('sodales.purus@malesuadavelconvallis.co.uk','Alexis Fox','Jasmine Z. Justice','2015-12-30 10:26:54','2018-08-05 07:47:10','aliquam','Germany'),('Donec.felis@consectetuer.edu','Wesley Villarreal','Reese P. Boyd','2015-02-27 17:47:20','2016-05-18 11:32:08','velit','United States'),('Class.aptent@rutrumeu.net','Desirae Nunez','Samuel X. Dalton','2015-10-07 18:59:47','2016-10-05 23:19:50','ut','United States'),('pretium.aliquet.metus@necorciDonec.co.uk','Dale Ayala','Imogene C. Conway','2015-09-23 21:38:22','2018-03-02 15:45:51','pretium','United States'),('consectetuer@arcuac.ca','Destiny Heath','Edward L. Jenkins','2015-04-26 13:37:05','2017-12-08 23:26:40','ligula','Germany');
INSERT INTO Customer (customer_mail_adres,name,paypal_account,subscription_start,subscription_end,password,country_name) VALUES ('justo@aliquamenim.edu','Medge Madden','Ann M. Ingram','2015-12-24 11:01:07','2017-07-07 17:14:01','metus','United Kingdom'),('ligula@augue.net','Colby Steele','Cedric T. Rojas','2015-11-18 10:47:00','2017-02-03 00:02:53','magna.','Spain'),('senectus.et.netus@iaculisaliquetdiam.net','Isadora Greer','Kadeem Q. Higgins','2015-04-12 22:24:28','2016-04-25 16:25:21','Donec','United States'),('sed.dui@Sednec.org','McKenzie Mccoy','Bevis N. Vasquez','2015-10-09 22:50:01','2017-02-25 04:42:53','eros','Germany'),('Curabitur@lobortis.net','Katell Marks','Libby B. Fuller','2015-02-08 20:06:17','2017-09-11 03:49:01','luctus','France'),('Curabitur.massa.Vestibulum@ametmetusAliquam.edu','Adam Freeman','Dorian C. Coffey','2015-10-03 17:53:06','2017-09-20 18:51:59','Vivamus','France'),('nisl.sem.consequat@enimEtiam.net','Naomi Lawson','Jason H. Brock','2015-08-08 00:06:52','2016-06-07 07:16:57','Nunc','France'),('pretium.aliquet@vulputateveliteu.net','Alec Gilbert','Ursa S. Murphy','2015-05-27 01:15:40','2018-12-07 08:48:02','orci.','Germany'),('eget.ipsum@pellentesqueeget.ca','Leigh Haley','Meghan N. Hawkins','2015-09-30 21:11:09','2017-08-13 04:40:25','egestas','Spain'),('arcu@vitaediamProin.com','Elton Hicks','Bianca B. Mcintyre','2015-02-28 14:22:17','2016-12-13 11:25:24','ac','Spain'),('cursus.et@Vestibulumaccumsan.com','Quincy Patrick','Aiko L. Buckley','2015-11-14 13:20:07','2018-04-24 14:14:48','nec,','United States'),('Suspendisse.sed@auctorvelit.net','Rylee Buck','Sawyer K. Holmes','2015-03-30 20:40:44','2017-06-24 00:00:47','vitae','Spain'),('ut.lacus@penatibuset.ca','Hermione Graham','Kitra N. Beasley','2015-04-18 23:16:45','2016-03-02 06:03:59','nulla.','France'),('eu.tempor.erat@risusquisdiam.org','Jamal Robinson','Ebony U. Wallace','2015-06-02 05:17:26','2018-05-19 23:26:40','magna.','Brazil'),('turpis.Nulla@nec.org','Arsenio Marquez','Eleanor S. Lara','2015-02-09 05:13:40','2016-11-12 14:22:46','amet','Germany');
INSERT INTO Customer (customer_mail_adres,name,paypal_account,subscription_start,subscription_end,password,country_name) VALUES ('facilisis.lorem@libero.com','Zachary Leon','Briar B. Blevins','2015-04-04 22:42:15','2016-01-19 18:08:23','velit.','Spain'),('rhoncus.Proin.nisl@egettincidunt.org','April Ware','Priscilla Y. Bird','2015-12-19 17:53:43','2018-12-31 13:39:54','pede.','France'),('a.felis@cursusin.ca','Brielle Rivers','Vivien K. Pickett','2015-07-18 01:47:22','2017-11-06 12:01:48','pharetra','Canada'),('luctus.aliquet@iaculisquispede.org','Kessie Bernard','Lewis Q. Pollard','2015-07-09 23:23:54','2018-03-21 09:15:31','semper','Nigeria'),('ligula@fermentumvel.org','Phoebe Vargas','Kim J. Dillon','2015-08-01 17:39:09','2018-09-11 02:03:33','lacus.','Spain'),('rutrum.lorem.ac@scelerisquemollisPhasellus.edu','Regina Hardy','Quyn R. Mcgee','2015-04-03 06:21:12','2016-01-02 15:57:09','ante','Germany'),('nec@pedeCrasvulputate.net','Rosalyn Ashley','Kylan B. Bell','2015-07-07 15:23:52','2016-02-02 06:46:12','magna','France'),('semper.tellus.id@Suspendissecommodo.ca','Benjamin Hyde','Farrah N. Camacho','2015-05-08 10:24:50','2017-07-24 01:35:31','ac','Chile'),('purus@elit.edu','Martina Hensley','Chester M. Berger','2015-03-17 15:20:19','2016-03-10 17:40:48','purus,','France'),('dui.nec@consectetuer.ca','Dexter Barlow','Ulla Z. Morgan','2015-09-05 13:06:18','2018-10-09 06:01:11','Nullam','Spain'),('egestas.Sed@euturpisNulla.org','Laith Callahan','Kimberley Y. Bean','2015-11-15 11:50:38','2016-10-27 06:39:52','erat','Netherlands'),('condimentum.Donec@duisemper.org','Marsden Mccullough','Lenore R. Slater','2015-09-07 03:29:43','2017-02-23 08:08:57','sapien,','Chile'),('consectetuer@estacmattis.net','Gary Vasquez','Jarrod Z. Reeves','2015-04-28 08:03:34','2017-01-05 11:57:33','interdum.','Netherlands'),('Curabitur.massa.Vestibulum@idsapien.com','Reed Mclaughlin','Chastity D. Duran','2015-01-05 22:33:14','2016-05-28 19:45:02','primis','Brazil'),('auctor.nunc@massaSuspendisse.co.uk','Ariel Brennan','Alyssa R. Michael','2015-05-14 09:46:42','2018-07-10 15:11:46','nulla','United States');
INSERT INTO Customer (customer_mail_adres,name,paypal_account,subscription_start,subscription_end,password,country_name) VALUES ('vestibulum.neque.sed@natoquepenatibuset.co.uk','Garth Leon','Rana W. Henry','2015-10-19 04:33:35','2018-08-23 16:45:41','ac,','United States'),('cursus.vestibulum.Mauris@liberoDonec.org','Macey Steele','Stella F. Mcmillan','2015-08-21 00:41:20','2017-04-11 05:22:22','nisl.','Brazil'),('sodales.purus.in@senectus.org','Carissa Roman','Brandon E. Woodard','2015-05-01 09:12:27','2018-04-11 18:55:25','Donec','Brazil'),('non.leo.Vivamus@arcu.ca','Xyla Madden','Jillian M. Pickett','2015-06-02 06:44:25','2017-01-01 03:06:48','Donec','Canada'),('enim.Nunc.ut@id.com','Flavia Valenzuela','Avye H. Gregory','2015-05-19 13:54:27','2016-10-02 03:07:54','quam','Nigeria'),('quam.Curabitur@loremsemper.com','Brianna Woodard','Keelie F. Day','2015-05-31 22:26:56','2016-12-25 09:37:55','auctor','Germany'),('Vestibulum.ut@orciUt.org','Raven Burris','Callum M. Craft','2015-10-27 13:18:04','2016-08-30 10:32:14','Quisque','Germany'),('in@mi.edu','Eaton Holcomb','Kerry D. Petty','2015-03-15 22:38:48','2017-03-11 14:05:23','mollis.','Spain'),('purus.accumsan@Fuscefermentumfermentum.ca','Sebastian Gay','Harper R. Waters','2015-08-01 12:34:33','2016-12-25 06:31:23','Etiam','France'),('ipsum@massaIntegervitae.org','Ingrid Green','Ria Y. Waters','2015-03-31 20:14:29','2018-01-19 15:01:21','odio.','Canada'),('Suspendisse@ac.net','Jolene Gilmore','Brynn P. Wade','2015-06-02 12:03:36','2016-02-18 21:56:50','magna','Brazil'),('sed@necante.org','Luke Rosario','Cora L. Mason','2015-12-05 21:06:46','2016-09-21 19:55:31','aliquam,','Spain'),('luctus.lobortis@ornare.ca','Felicia Cote','Stephen K. Dickerson','2015-10-01 14:26:26','2018-12-13 18:28:06','auctor','United States'),('imperdiet@lacusAliquam.com','Clark Workman','Ursula M. Pace','2015-07-16 15:55:39','2016-01-06 11:18:41','pretium','France'),('nunc.est@ligulaelitpretium.ca','Lawrence Quinn','Merrill A. Walter','2015-06-03 11:30:31','2017-07-10 23:33:28','ante','France');


--Watch_history insertion lorem ipsum
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (11,'a.felis@cursusin.ca','2016-09-13 18:28:56',4.64),(4,'a.felis@cursusin.ca','2016-03-24 12:45:12',6.60),(18,'ac@consequat.net','2016-07-27 22:17:24',1.15),(14,'ac@consequat.net','2016-06-12 08:00:21',4.49),(12,'ante.dictum@sit.co.uk','2016-06-24 16:19:18',0.30);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (11,'Curabitur.massa.Vestibulum@ametmetusAliquam.edu','2016-10-23 14:38:03',4.64),(13,'Class.aptent@rutrumeu.net','2016-01-22 18:13:15',3.49),(21,'Class.aptent@rutrumeu.net','2016-01-24 19:57:28',2.56),(22,'ante.dictum@sit.co.uk','2016-05-05 05:27:51',9.52),(8,'ante.dictum@sit.co.uk','2016-04-10 19:06:59',3.46);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (15,'Curabitur.massa.Vestibulum@ametmetusAliquam.edu','2016-08-25 19:50:29',5.06),(3,'cursus.vestibulum.Mauris@liberoDonec.org','2016-04-09 16:32:26',1.04),(16,'cursus.vestibulum.Mauris@liberoDonec.org','2016-09-01 19:31:21',6.14),(17,'dui.nec@consectetuer.ca','2016-10-30 22:10:59',4.24),(13,'egestas.Sed@euturpisNulla.org','2016-01-10 02:44:39',3.49);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (13,'egestas.Sed@euturpisNulla.org','2016-02-08 12:36:29',3.49),(18,'enim.Nunc.ut@id.com','2016-06-25 22:08:00',1.15),(4,'enim.Nunc.ut@id.com','2016-06-11 13:12:23',6.60),(20,'eu.tempor.erat@risusquisdiam.org','2016-08-13 11:26:00',5.13),(21,'eu.tempor.erat@risusquisdiam.org','2016-01-10 13:14:31',2.56);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (12,'ipsum@massaIntegervitae.org','2016-07-12 19:04:30',0.30),(7,'ipsum@massaIntegervitae.org','2016-12-04 05:15:31',0.67),(19,'in@mi.edu','2016-05-14 05:22:02',1.36),(7,'in@mi.edu','2016-11-22 11:01:57',0.67),(13,'in@mi.edu','2016-08-08 11:04:53',3.49);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (1,'justo@aliquamenim.edu','2016-04-10 01:29:42',4.06),(3,'justo@aliquamenim.edu','2016-04-26 19:59:06',1.04),(5,'justo@aliquamenim.edu','2016-07-22 08:34:45',9.05),(5,'ligula@augue.net','2016-05-14 19:00:25',9.05),(6,'ligula@augue.net','2016-11-07 15:31:18',1.10);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (2,'magna.tellus.faucibus@infelisNulla.net','2016-03-01 00:50:04',3.07),(18,'magna.tellus.faucibus@infelisNulla.net','2016-10-24 09:32:20',1.15),(21,'luctus.lobortis@ornare.ca','2016-07-22 01:47:37',2.56),(8,'ligula@fermentumvel.org','2016-06-05 09:03:01',3.46),(11,'ligula@fermentumvel.org','2016-01-25 17:46:09',4.64);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (12,'non.leo.Vivamus@arcu.ca','2016-12-05 11:21:42',0.30),(7,'non.leo.Vivamus@arcu.ca','2016-07-11 00:08:47',0.67),(3,'pretium.aliquet.metus@necorciDonec.co.uk','2016-04-02 16:52:40',1.04),(8,'pretium.aliquet.metus@necorciDonec.co.uk','2016-01-30 06:01:45',3.46),(8,'pretium.aliquet.metus@necorciDonec.co.uk','2016-08-08 00:55:55',3.46);
INSERT INTO Watch_history (movie_id,customer_mail_adres,watch_date,price) VALUES (15,'vitae.risus.Duis@sapienimperdietornare.ca','2016-02-09 21:37:51',5.06),(11,'turpis.Nulla@nec.org','2016-03-04 22:01:27',4.64),(20,'sollicitudin@dui.com','2016-05-02 16:36:41',5.13),(2,'sed@necante.org','2016-09-16 09:40:36',3.07),(2,'purus@elit.edu','2016-02-21 00:51:21',3.07);
