-- print output in columns
.mode column

-- enforce foreign key constraints
PRAGMA foreign_keys = ON;


CREATE TABLE CharacterInfo(
    characterID   INT         NOT NULL,
    characterName VARCHAR(30) NOT NULL,
    alias         VARCHAR(30) NOT NULL,
    creator       VARCHAR(30) NOT NULL,

    PRIMARY KEY (characterID)
);


CREATE TABLE Comic(
    comicID         INT         NOT NULL,
    comicTitle      VARCHAR(40) NOT NULL,
    issue           INT         NOT NULL,
    seriesID        INT         NOT NULL,
    publisherID     INT         NOT NULL,
    publicationDate date        NOT NULL,
    genre           VARCHAR(30) NOT NULL,
    valuation       INT         NOT NULL
);


CREATE TABLE ComicCharacter(
    comicCharacterID INT NOT NULL,
    comicID          INT NOT NULL,
    characterID      INT NOT NULL,
    mainCharacter    INT NOT NULL
);


CREATE TABLE Publisher(
    publisherID   INT         NOT NULL,
    publisherName VARCHAR(30) NOT NULL,
    foundedYear   INT         NOT NULL,
    headquarters  VARCHAR(10) NOT NULL
);


CREATE TABLE Series(
    seriesID   INT         NOT NULL,
    seriesName VARCHAR(30) NOT NULL,
    startYear  INT         NOT NULL,
    endYear    INT         NOT NULL
);


INSERT INTO CharacterInfo VALUES(1,'Duckguy','Jonnyr Davis','James Williams');
INSERT INTO CharacterInfo VALUES(2,'Superdude','William Bro','James Rodriguez');
INSERT INTO CharacterInfo VALUES(3,'The Amazing Spider-Guy','James Webber','Michael Smith');
INSERT INTO CharacterInfo VALUES(4,'Iron Duck','Marty Miller','Mary Martinez');
INSERT INTO CharacterInfo VALUES(5,'Captain Americana','William Eagle','Michael Martinez');
INSERT INTO CharacterInfo VALUES(6,'The Incredible Sulk','Michael Johnson','Jennifer Jones');
INSERT INTO CharacterInfo VALUES(7,'Duck Gal','Patricia Melo','Robert Garcia');
INSERT INTO CharacterInfo VALUES(8,'Aquaguy','Murray Brown','Michael Williams');
INSERT INTO CharacterInfo VALUES(9,'The Flashy','Elizabeth Emmers','Jennifer Johnson');
INSERT INTO CharacterInfo VALUES(10,'Green Lamplight','James JoelINTon','John Rodriguez');
INSERT INTO CharacterInfo VALUES(11,'Doctor Duck','John Martinez','James Johnson');
INSERT INTO CharacterInfo VALUES(12,'Black Window','Linda Johnson','William Smith');
INSERT INTO CharacterInfo VALUES(13,'Thora','Jennifer Hammer','Patricia Davis');
INSERT INTO CharacterInfo VALUES(14,'Hawked Eye','Linda Looker','Robert Smith');
INSERT INTO CharacterInfo VALUES(15,'Ant-Gentleman','Elliott Garcia','Michael Brown');
INSERT INTO CharacterInfo VALUES(16,'Starlordly','Santo Rodriguez','Linda Miller');
INSERT INTO CharacterInfo VALUES(17,'Green Growl','William Davis','Linda Rodriguez');
INSERT INTO CharacterInfo VALUES(18,'Dare-Duck','Elizabeth Ella','Linda Martinez');
INSERT INTO CharacterInfo VALUES(19,'Silver Surface','Robert Garcia','Linda Williams');
INSERT INTO CharacterInfo VALUES(20,'Ghost Lighter','Elizabeth Flo','Michael Miller');
INSERT INTO CharacterInfo VALUES(21,'Night Shadow','Mary Brown','John Smith');
INSERT INTO CharacterInfo VALUES(22,'Mystic Mage','Michael Martinez','Patricia Jones');
INSERT INTO CharacterInfo VALUES(23,'Rocket Racer','Robert Davis','Elizabeth Johnson');
INSERT INTO CharacterInfo VALUES(24,'Cybernetic Cheetah','Michael Smith','John Davis');
INSERT INTO CharacterInfo VALUES(25,'Quantum Quake','Noela Garcia','Elizabeth Rodriguez');
INSERT INTO CharacterInfo VALUES(26,'Inferno Blaze','Lizzy Rouge','John Smith');
INSERT INTO CharacterInfo VALUES(27,'Spectral Phantom','Joletar Jones','Elizabeth Martinez');
INSERT INTO CharacterInfo VALUES(28,'Gravity Guardian','Michael Davis','Robert Johnson');
INSERT INTO CharacterInfo VALUES(29,'Electro Surge','William Spark','Linda Williams');
INSERT INTO CharacterInfo VALUES(30,'Frostbite Freeze','Mary Breeze','Linda Jones');


INSERT INTO Comic VALUES(2,'Ant-Gentleman Adventures',26,4,2,'1998-01-11','Superhero',66);
INSERT INTO Comic VALUES(3,'Ant-Gentleman Adventures',39,4,2,'2000-04-24','Superhero',56);
INSERT INTO Comic VALUES(4,'Aquaguy Quest',34,2,1,'1987-07-12','Fantasy',295);
INSERT INTO Comic VALUES(5,'Aquaguy Quest',66,2,1,'1989-04-09','Fantasy',217);
INSERT INTO Comic VALUES(6,'Aquaguy Quest',93,2,1,'2000-02-09','Fantasy',125);
INSERT INTO Comic VALUES(7,'Duckguy Chronicles',4,3,4,'1973-02-13','Mystery',558);
INSERT INTO Comic VALUES(8,'Duckguy Chronicles',42,3,4,'1974-05-24','Mystery',473);
INSERT INTO Comic VALUES(9,'Duckguy Chronicles',94,3,4,'1976-05-10','Mystery',367);
INSERT INTO Comic VALUES(10,'Beastly',21,4,2,'1979-02-22','Superhero',329);
INSERT INTO Comic VALUES(11,'Big Panther Company',19,2,1,'1983-02-26','Fantasy',482);
INSERT INTO Comic VALUES(12,'Captain Americana',7,5,3,'1967-11-10','Horror',392);
INSERT INTO Comic VALUES(13,'Captain Americana',29,5,3,'1968-10-10','Horror',263);
INSERT INTO Comic VALUES(14,'Captain Americana',38,5,3,'1970-05-05','Horror',333);
INSERT INTO Comic VALUES(15,'Captain Americana',45,5,3,'1971-08-03','Horror',131);
INSERT INTO Comic VALUES(16,'Wonderous Dare-Duck',25,4,2,'2006-02-27','Fantasy',188);
INSERT INTO Comic VALUES(17,'Wonderous Dare-Duck',79,4,2,'2007-09-11','Fantasy',174);
INSERT INTO Comic VALUES(18,'Wonderous Dare-Duck',100,4,2,'2009-07-10','Fantasy',138);
INSERT INTO Comic VALUES(19,'Deadline',31,5,3,'2011-09-24','Horror',351);
INSERT INTO Comic VALUES(20,'Deadline',97,5,3,'2019-10-27','Horror',170);
INSERT INTO Comic VALUES(21,'Falconer Fusion',4,4,2,'1962-02-15','Science Fiction',589);
INSERT INTO Comic VALUES(22,'Falconer Fusion',14,4,2,'1962-08-18','Science Fiction',403);
INSERT INTO Comic VALUES(23,'Falconer Fusion',20,4,2,'1962-09-22','Science Fiction',302);
INSERT INTO Comic VALUES(24,'Falconer Fusion',61,4,2,'1963-07-04','Science Fiction',262);
INSERT INTO Comic VALUES(25,'Falconer Fusion',87,4,2,'1964-05-25','Science Fiction',202);
INSERT INTO Comic VALUES(26,'Falconer Fusion',91,4,2,'1964-06-26','Science Fiction',146);
INSERT INTO Comic VALUES(27,'Gambler',59,3,4,'1976-11-08','Fantasy',126);
INSERT INTO Comic VALUES(28,'Gambler',60,3,4,'1976-11-14','Fantasy',126);
INSERT INTO Comic VALUES(29,'Gambler',61,3,4,'1976-11-21','Fantasy',126);
INSERT INTO Comic VALUES(30,'Gambler',72,3,4,'1976-12-11','Fantasy',121);
INSERT INTO Comic VALUES(31,'Ghost Lighter Returns',33,1,1,'1995-11-01','Science Fiction',396);
INSERT INTO Comic VALUES(32,'Ghost Lighter Returns',96,1,1,'1995-12-25','Science Fiction',296);
INSERT INTO Comic VALUES(33,'Ghost Lighter Returns',100,1,1,'1996-04-22','Science Fiction',211);
INSERT INTO Comic VALUES(34,'Green Growl Rebirth',26,1,1,'1975-12-28','Superhero',94);
INSERT INTO Comic VALUES(35,'Green Growl Rebirth',35,1,1,'1975-01-21','Science Fiction',84);
INSERT INTO Comic VALUES(36,'Green Growl Rebirth',53,1,1,'1976-05-17','Superhero',83);
INSERT INTO Comic VALUES(37,'Green Growl Rebirth',71,1,1,'1976-09-23','Horror',76);
INSERT INTO Comic VALUES(38,'Green Lamplight Avenged',18,1,1,'1983-10-15','Fantasy',580);
INSERT INTO Comic VALUES(39,'Green Lamplight Avenged',61,1,1,'1984-09-26','Fantasy',395);
INSERT INTO Comic VALUES(40,'Green Lamplight Avenged',72,1,1,'1984-10-03','Fantasy',163);
INSERT INTO Comic VALUES(41,'Hawked Eye Backward',11,5,3,'2005-11-21','Superhero',270);
INSERT INTO Comic VALUES(42,'Hawked Eye Backward',20,5,3,'2006-05-04','Superhero',233);
INSERT INTO Comic VALUES(43,'Hawked Eye Backward',28,5,3,'2006-10-11','Superhero',145);
INSERT INTO Comic VALUES(44,'Hawked Eye Backward',95,5,3,'2008-08-14','Superhero',94);
INSERT INTO Comic VALUES(45,'Hulkbuster Smash',14,3,4,'2003-02-15','Science Fiction',73);
INSERT INTO Comic VALUES(46,'Hulkbuster Smash',94,3,4,'2003-10-20','Science Fiction',44);
INSERT INTO Comic VALUES(47,'Human Scorch Fever',80,3,4,'2007-01-06','Horror',65);
INSERT INTO Comic VALUES(48,'Invisible Womanly Cross',99,1,1,'1980-12-01','Science Fiction',214);
INSERT INTO Comic VALUES(49,'Iron Duck Fights Back',48,2,1,'1962-03-17','Superhero',476);
INSERT INTO Comic VALUES(50,'Iron Duck Fights Back',64,2,1,'1964-04-25','Fantasy',305);
INSERT INTO Comic VALUES(51,'Jean Greyskull Ignited',11,3,4,'2003-01-21','Science Fiction',145);
INSERT INTO Comic VALUES(52,'Jean Greyskull Ignited',30,3,4,'2003-03-07','Science Fiction',17);
INSERT INTO Comic VALUES(53,'Jean Greyskull Ignited',35,3,4,'2003-04-08','Science Fiction',15);
INSERT INTO Comic VALUES(54,'Jean Greyskull Ignited',77,3,4,'2003-05-09','Science Fiction',9);
INSERT INTO Comic VALUES(55,'Mr. Fantastical',18,1,1,'1976-03-25','Mystery',65);
INSERT INTO Comic VALUES(56,'Nightcrawlerly',6,4,2,'1976-05-23','Superhero',601);
INSERT INTO Comic VALUES(57,'Nightcrawlerly',19,4,2,'1976-07-21','Superhero',462);
INSERT INTO Comic VALUES(58,'Nightcrawlerly',47,4,2,'1977-07-26','Superhero',351);
INSERT INTO Comic VALUES(59,'Plastic Chap',22,1,1,'1989-07-18','Science Fiction',430);
INSERT INTO Comic VALUES(60,'Plastic Chap',28,1,1,'1989-10-04','Science Fiction',317);
INSERT INTO Comic VALUES(61,'Plastic Chap',83,1,1,'1990-10-18','Science Fiction',168);
INSERT INTO Comic VALUES(62,'Professor XYZ',18,4,2,'2005-02-01','Superhero',60);
INSERT INTO Comic VALUES(63,'Professor XYZ',64,4,2,'2006-11-11','Superhero',30);
INSERT INTO Comic VALUES(64,'Quick Silver',29,3,4,'2003-08-23','Mystery',83);
INSERT INTO Comic VALUES(65,'Quick Silver',82,3,4,'2005-06-26','Mystery',54);
INSERT INTO Comic VALUES(66,'Rescue Ranger',33,4,2,'1980-06-09','Mystery',381);
INSERT INTO Comic VALUES(67,'Rescue Ranger',44,4,2,'1980-07-13','Mystery',309);
INSERT INTO Comic VALUES(68,'Rescue Ranger',88,4,2,'1982-12-15','Mystery',122);
INSERT INTO Comic VALUES(69,'Rogue Runner',5,2,1,'2013-01-26','Science Fiction',16);
INSERT INTO Comic VALUES(70,'Scarlet Sorceress',13,4,2,'2008-07-03','Fantasy',62);
INSERT INTO Comic VALUES(71,'Scarlet Sorceress',24,4,2,'2008-08-02','Fantasy',31);
INSERT INTO Comic VALUES(72,'Scarlet Sorceress',39,4,2,'2008-10-17','Fantasy',24);
INSERT INTO Comic VALUES(73,'Scarlet Sorceress',66,4,2,'2009-09-15','Fantasy',13);
INSERT INTO Comic VALUES(74,'Scarlet Sorceress',95,4,2,'2010-03-13','Fantasy',10);
INSERT INTO Comic VALUES(75,'Silver Surface',5,1,1,'1960-06-19','Superhero',590);
INSERT INTO Comic VALUES(76,'Silver Surface',55,1,1,'1960-10-06','Superhero',444);
INSERT INTO Comic VALUES(77,'Silver Surface',84,1,1,'1961-06-14','Superhero',177);
INSERT INTO Comic VALUES(78,'Starlordly',87,3,4,'1986-01-22','Horror',231);
INSERT INTO Comic VALUES(79,'Stormy Weather',68,5,3,'2007-12-14','Horror',80);
INSERT INTO Comic VALUES(80,'Stormy Weather',69,5,3,'2007-12-27','Horror',43);
INSERT INTO Comic VALUES(81,'Stormy Weather',85,5,3,'2008-03-15','Horror',21);
INSERT INTO Comic VALUES(82,'Superdude',11,4,2,'1969-08-19','Fantasy',840);
INSERT INTO Comic VALUES(83,'Superdude',66,4,2,'1969-12-20','Fantasy',486);
INSERT INTO Comic VALUES(84,'Superdude',71,4,2,'1970-01-21','Fantasy',369);
INSERT INTO Comic VALUES(85,'Superdude',86,4,2,'1970-02-02','Fantasy',233);
INSERT INTO Comic VALUES(86,'The Flashy',3,2,1,'2000-06-04','Superhero',20);
INSERT INTO Comic VALUES(87,'The Flashy',19,2,1,'2000-07-05','Superhero',10);
INSERT INTO Comic VALUES(88,'The Flashy',40,2,1,'2000-08-06','Superhero',6);
INSERT INTO Comic VALUES(89,'The Flashy',48,2,1,'2000-08-27','Superhero',5);
INSERT INTO Comic VALUES(90,'The Incredible Sulk',6,2,1,'1968-07-25','Mystery',579);
INSERT INTO Comic VALUES(91,'The Incredible Sulk',20,2,1,'1968-09-11','Mystery',528);
INSERT INTO Comic VALUES(92,'The Incredible Sulk',94,2,1,'1969-08-13','Mystery',354);
INSERT INTO Comic VALUES(93,'The Pun-isher',58,5,3,'2011-04-12','Superhero',10);
INSERT INTO Comic VALUES(94,'The Pun-isher',60,5,3,'2011-04-23','Superhero',9);
INSERT INTO Comic VALUES(95,'The Pun-isher',61,5,3,'2011-04-30','Superhero',8);
INSERT INTO Comic VALUES(96,'Visionary',8,2,1,'2005-12-18','Superhero',14);
INSERT INTO Comic VALUES(97,'Visionary',94,2,1,'2006-05-21','Superhero',3);
INSERT INTO Comic VALUES(98,'War Marchine',2,5,3,'1974-01-20','Fantasy',225);
INSERT INTO Comic VALUES(99,'War Marchine',46,5,3,'1974-08-19','Fantasy',122);
INSERT INTO Comic VALUES(100,'Wolveroon',16,2,1,'2010-03-20','Horror',31);
INSERT INTO Comic VALUES(101,'Wolveroon',64,2,1,'2011-02-07','Horror',25);


INSERT INTO ComicCharacter VALUES(2,2,15,1);
INSERT INTO ComicCharacter VALUES(3,3,15,0);
INSERT INTO ComicCharacter VALUES(4,4,8,1);
INSERT INTO ComicCharacter VALUES(5,5,8,0);
INSERT INTO ComicCharacter VALUES(6,6,8,1);
INSERT INTO ComicCharacter VALUES(7,7,1,0);
INSERT INTO ComicCharacter VALUES(8,8,1,0);
INSERT INTO ComicCharacter VALUES(9,9,1,0);
INSERT INTO ComicCharacter VALUES(10,12,5,0);
INSERT INTO ComicCharacter VALUES(11,13,5,0);
INSERT INTO ComicCharacter VALUES(12,14,5,1);
INSERT INTO ComicCharacter VALUES(13,15,5,1);
INSERT INTO ComicCharacter VALUES(14,16,18,1);
INSERT INTO ComicCharacter VALUES(15,17,18,1);
INSERT INTO ComicCharacter VALUES(16,18,18,1);
INSERT INTO ComicCharacter VALUES(17,31,20,0);
INSERT INTO ComicCharacter VALUES(18,32,20,0);
INSERT INTO ComicCharacter VALUES(19,33,20,0);
INSERT INTO ComicCharacter VALUES(20,34,17,0);
INSERT INTO ComicCharacter VALUES(21,35,17,0);
INSERT INTO ComicCharacter VALUES(22,36,17,0);
INSERT INTO ComicCharacter VALUES(23,37,17,1);
INSERT INTO ComicCharacter VALUES(24,38,10,0);
INSERT INTO ComicCharacter VALUES(25,39,10,1);
INSERT INTO ComicCharacter VALUES(26,40,10,0);
INSERT INTO ComicCharacter VALUES(27,41,14,1);
INSERT INTO ComicCharacter VALUES(28,42,14,0);
INSERT INTO ComicCharacter VALUES(29,43,14,0);
INSERT INTO ComicCharacter VALUES(30,44,14,1);
INSERT INTO ComicCharacter VALUES(31,49,4,0);
INSERT INTO ComicCharacter VALUES(32,50,4,0);
INSERT INTO ComicCharacter VALUES(33,75,19,0);
INSERT INTO ComicCharacter VALUES(34,76,19,0);
INSERT INTO ComicCharacter VALUES(35,77,19,1);
INSERT INTO ComicCharacter VALUES(36,78,16,0);
INSERT INTO ComicCharacter VALUES(37,82,2,1);
INSERT INTO ComicCharacter VALUES(38,83,2,1);
INSERT INTO ComicCharacter VALUES(39,84,2,0);
INSERT INTO ComicCharacter VALUES(40,85,2,1);
INSERT INTO ComicCharacter VALUES(41,86,9,0);
INSERT INTO ComicCharacter VALUES(42,87,9,0);
INSERT INTO ComicCharacter VALUES(43,88,9,0);
INSERT INTO ComicCharacter VALUES(44,89,9,1);
INSERT INTO ComicCharacter VALUES(45,90,6,1);
INSERT INTO ComicCharacter VALUES(46,91,6,0);
INSERT INTO ComicCharacter VALUES(47,92,6,0);
INSERT INTO ComicCharacter VALUES(48,2,22,0);
INSERT INTO ComicCharacter VALUES(49,78,29,0);
INSERT INTO ComicCharacter VALUES(50,41,20,0);
INSERT INTO ComicCharacter VALUES(51,42,5,0);
INSERT INTO ComicCharacter VALUES(52,43,15,0);
INSERT INTO ComicCharacter VALUES(53,44,5,1);
INSERT INTO ComicCharacter VALUES(54,49,22,0);
INSERT INTO ComicCharacter VALUES(55,50,11,1);
INSERT INTO ComicCharacter VALUES(56,75,16,1);
INSERT INTO ComicCharacter VALUES(57,76,3,0);
INSERT INTO ComicCharacter VALUES(58,77,5,0);
INSERT INTO ComicCharacter VALUES(59,82,1,1);
INSERT INTO ComicCharacter VALUES(60,3,26,0);
INSERT INTO ComicCharacter VALUES(61,83,22,1);
INSERT INTO ComicCharacter VALUES(62,84,4,0);
INSERT INTO ComicCharacter VALUES(63,85,30,1);
INSERT INTO ComicCharacter VALUES(64,86,7,0);
INSERT INTO ComicCharacter VALUES(65,87,17,1);
INSERT INTO ComicCharacter VALUES(66,88,30,0);
INSERT INTO ComicCharacter VALUES(67,89,8,0);
INSERT INTO ComicCharacter VALUES(68,90,11,0);
INSERT INTO ComicCharacter VALUES(69,91,29,1);
INSERT INTO ComicCharacter VALUES(70,40,23,0);
INSERT INTO ComicCharacter VALUES(71,39,12,1);
INSERT INTO ComicCharacter VALUES(72,38,6,0);
INSERT INTO ComicCharacter VALUES(73,37,8,0);
INSERT INTO ComicCharacter VALUES(74,4,30,0);
INSERT INTO ComicCharacter VALUES(75,5,24,0);
INSERT INTO ComicCharacter VALUES(76,6,12,1);
INSERT INTO ComicCharacter VALUES(77,7,7,0);
INSERT INTO ComicCharacter VALUES(78,8,13,0);
INSERT INTO ComicCharacter VALUES(79,9,23,0);
INSERT INTO ComicCharacter VALUES(80,12,18,1);
INSERT INTO ComicCharacter VALUES(81,13,2,0);
INSERT INTO ComicCharacter VALUES(82,14,9,0);
INSERT INTO ComicCharacter VALUES(83,15,25,1);
INSERT INTO ComicCharacter VALUES(84,16,4,0);
INSERT INTO ComicCharacter VALUES(85,17,25,0);
INSERT INTO ComicCharacter VALUES(86,18,24,0);
INSERT INTO ComicCharacter VALUES(87,31,24,1);
INSERT INTO ComicCharacter VALUES(88,32,22,1);
INSERT INTO ComicCharacter VALUES(89,33,27,1);
INSERT INTO ComicCharacter VALUES(90,34,29,0);
INSERT INTO ComicCharacter VALUES(91,35,27,0);
INSERT INTO ComicCharacter VALUES(92,36,4,0);
INSERT INTO ComicCharacter VALUES(93,92,24,0);
INSERT INTO ComicCharacter VALUES(94,50,10,1);
INSERT INTO ComicCharacter VALUES(95,43,24,0);
INSERT INTO ComicCharacter VALUES(96,70,3,0);
INSERT INTO ComicCharacter VALUES(97,81,6,0);
INSERT INTO ComicCharacter VALUES(98,80,19,0);
INSERT INTO ComicCharacter VALUES(99,95,1,1);
INSERT INTO ComicCharacter VALUES(100,9,5,0);
INSERT INTO ComicCharacter VALUES(101,40,21,0);
INSERT INTO ComicCharacter VALUES(102,80,16,0);
INSERT INTO ComicCharacter VALUES(103,26,21,1);
INSERT INTO ComicCharacter VALUES(104,50,1,1);
INSERT INTO ComicCharacter VALUES(105,21,18,0);
INSERT INTO ComicCharacter VALUES(106,41,1,0);
INSERT INTO ComicCharacter VALUES(107,46,30,1);
INSERT INTO ComicCharacter VALUES(108,11,20,0);
INSERT INTO ComicCharacter VALUES(109,30,24,1);
INSERT INTO ComicCharacter VALUES(110,28,10,1);
INSERT INTO ComicCharacter VALUES(111,10,30,0);
INSERT INTO ComicCharacter VALUES(112,98,7,0);
INSERT INTO ComicCharacter VALUES(113,36,30,1);
INSERT INTO ComicCharacter VALUES(114,19,25,0);
INSERT INTO ComicCharacter VALUES(115,20,25,1);
INSERT INTO ComicCharacter VALUES(116,22,18,1);
INSERT INTO ComicCharacter VALUES(117,23,18,0);
INSERT INTO ComicCharacter VALUES(118,24,18,0);
INSERT INTO ComicCharacter VALUES(119,25,18,1);
INSERT INTO ComicCharacter VALUES(120,27,10,0);
INSERT INTO ComicCharacter VALUES(121,29,10,0);
INSERT INTO ComicCharacter VALUES(122,45,30,1);
INSERT INTO ComicCharacter VALUES(123,47,11,1);
INSERT INTO ComicCharacter VALUES(124,48,13,0);
INSERT INTO ComicCharacter VALUES(125,51,20,1);
INSERT INTO ComicCharacter VALUES(126,52,20,1);
INSERT INTO ComicCharacter VALUES(127,53,20,0);
INSERT INTO ComicCharacter VALUES(128,54,20,1);
INSERT INTO ComicCharacter VALUES(129,55,2,0);
INSERT INTO ComicCharacter VALUES(130,56,24,0);
INSERT INTO ComicCharacter VALUES(131,57,24,1);
INSERT INTO ComicCharacter VALUES(132,58,24,1);
INSERT INTO ComicCharacter VALUES(133,59,19,0);
INSERT INTO ComicCharacter VALUES(134,60,19,0);
INSERT INTO ComicCharacter VALUES(135,61,19,0);
INSERT INTO ComicCharacter VALUES(136,62,25,1);
INSERT INTO ComicCharacter VALUES(137,63,25,1);
INSERT INTO ComicCharacter VALUES(138,64,19,1);
INSERT INTO ComicCharacter VALUES(139,65,19,0);
INSERT INTO ComicCharacter VALUES(140,66,7,0);
INSERT INTO ComicCharacter VALUES(141,67,7,1);
INSERT INTO ComicCharacter VALUES(142,68,7,0);
INSERT INTO ComicCharacter VALUES(143,69,24,0);
INSERT INTO ComicCharacter VALUES(144,71,21,1);
INSERT INTO ComicCharacter VALUES(145,72,21,1);
INSERT INTO ComicCharacter VALUES(146,73,21,1);
INSERT INTO ComicCharacter VALUES(147,74,21,1);
INSERT INTO ComicCharacter VALUES(148,79,19,1);
INSERT INTO ComicCharacter VALUES(149,93,1,0);
INSERT INTO ComicCharacter VALUES(150,94,1,0);
INSERT INTO ComicCharacter VALUES(151,96,14,1);
INSERT INTO ComicCharacter VALUES(152,97,14,0);
INSERT INTO ComicCharacter VALUES(153,99,7,1);
INSERT INTO ComicCharacter VALUES(154,100,15,0);
INSERT INTO ComicCharacter VALUES(155,101,15,1);


INSERT INTO Publisher VALUES(1,'Epic Doddles',1960,'America');
INSERT INTO Publisher VALUES(2,'Kapow Publications',1962,'America');
INSERT INTO Publisher VALUES(3,'Heroic Inklings',1967,'UK');
INSERT INTO Publisher VALUES(4,'Panel Pals',1973,'Australia');


INSERT INTO Series VALUES(1,'The OK Seven',1960,2000);
INSERT INTO Series VALUES(2,'The Revengos',1962,2013);
INSERT INTO Series VALUES(3,'The Bat Folks',1967,2007);
INSERT INTO Series VALUES(4,'Falcon and the Beasts',1962,2010);
INSERT INTO Series VALUES(5,'The American Nightmare',1967,2019);