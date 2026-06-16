-- print output in columns
.mode column


-- create tables
CREATE TABLE owners (
  owner_id    INTEGER,
  first_name  VARCHAR(20),
  second_name VARCHAR(30),
  address     VARCHAR(50),
  town        VARCHAR(20),
  telephone   VARCHAR(11)
);


CREATE TABLE pets (
  pet_code VARCHAR(5),
  pet_name VARCHAR(20),
  type     VARCHAR(30),
  dob      DATE,
  vacc     BOOLEAN,
  owner_id INTEGER
);


-- add data
INSERT INTO owners VALUES (1277, 'Hardeep', 'Singh', '65 Iona Way', 'Greenock', '01475255707');
INSERT INTO owners VALUES (2356, 'Sally', 'Chan', '142 Main Street', 'Greenock', '01475242499');
INSERT INTO owners VALUES (3510, 'Elaine', 'Bryce', '29 Clyde Drive', 'Gourock', '01475636321');
INSERT INTO owners VALUES (3821, 'Cameron', 'Gray', '17 Shuttle Street', 'Gourock', '01475312245');
INSERT INTO owners VALUES (1053, 'Mark', 'Trench', '11 Coat Lane', 'Alloa', '01259111111');
INSERT INTO owners VALUES (1981, 'Shona', 'Bonehilda', '37 Cycle Path', 'Stirling', '01786222222');
INSERT INTO owners VALUES (2461, 'Glenda', 'Huntington', '101 Wetware Way', 'California', '01324000000');


INSERT INTO pets VALUES ('P0123', 'Misty', 'Cat', '2012-04-23', 'True', 2356);
INSERT INTO pets VALUES ('P0345', 'Rover', 'Dog', '2010-12-12', 'True', 3821);
INSERT INTO pets VALUES ('P0887', 'Foggy', 'Cat', '2012-01-23', 'True', 1277);
INSERT INTO pets VALUES ('P1559', 'Gladys', 'Gerbil', '2010-04-16', 'False', 1277);
INSERT INTO pets VALUES ('P1985', 'Slinky', 'Tortoise', '2016-09-24', 'False', 3510);
INSERT INTO pets VALUES ('P2233', 'Speedy', 'Tortoise', '2013-06-09', 'True', 1277);
INSERT INTO pets VALUES ('P1996', 'Jezza', 'Rat', '2022-11-02', 'True', 1053);
INSERT INTO pets VALUES ('P2458', 'Skelly', 'Iguana', '2012-11-11', 'False', 1981);
INSERT INTO pets VALUES ('P2154', 'Frank', 'Goldfish', '2010-01-01', 'True', 1053);
INSERT INTO pets VALUES ('P4512', 'Murrell', 'Snake', '1996-04-16', 'False', 2461);