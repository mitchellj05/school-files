-- enable foreign key support
PRAGMA foreign_keys = ON;

-- print pretty columns
.mode column


-- create tables
CREATE TABLE movie(
  movie_id      INTEGER NOT NULL,
  title         VARCHAR(30),
  director      VARCHAR(20),
  year_released INTEGER,
  duration_mins INTEGER,

  PRIMARY KEY (movie_id)
);


CREATE TABLE box_office(
  movie_id            INTEGER NOT NULL,
  rating              FLOAT,
  movie_budget        INTEGER,
  US_sales            INTEGER,
  international_sales INTEGER,

  CHECK (rating >= 0 AND rating <= 10),

  PRIMARY KEY (movie_id)
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);


-- add data
INSERT INTO movie(movie_id,title,director,year_released,duration_mins) 
VALUES (1,'Toy Story','John Lasseter',1995,81),
       (2,'A Bug''s Life','John Lasseter',1998,95),
       (3,'Toy Story 2','John Lasseter',1999,93),
       (4,'Monsters, Inc.','Pete Docter',2001,92),
       (5,'Finding Nemo','Andrew Stanton',2003,107),
       (6,'The Incredibles','Brad Bird',2004,116),
       (7,'Cars','John Lasseter',2006,117),
       (8,'Ratatouille','Brad Bird',2007,115),
       (9,'WALL-E','Andrew Stanton',2008,104),
       (10,'Up','Pete Docter',2009,101),
       (11,'Toy Story 3','Lee Unkrich',2010,103),
       (12,'Cars 2','John Lasseter',2011,120),
       (13,'Brave','Brenda Chapman',2012,102),
       (14,'Monsters University','Dan Scanlon',2013,110);


INSERT INTO box_office 
VALUES (1,8.30,200000000,191796233,170162503),
       (2,7.20,200000000,162798565,200600000),
       (3,7.90,240000000,245852179,239163000),
       (4,8.10,250000000,289916256,272900000),
       (5,8.20,600000000,380843261,555900000),
       (6,8.00,375000000,261441092,370001000),
       (7,7.20,245000000,244082982,217900167),
       (8,8.00,417500000,206445654,417277164),
       (9,8.50,275000000,223808164,297503696),
       (10,8.30,400000000,293004164,438338580),
       (11,8.40,500000000,415004880,648167031),
       (12,6.40,400000000,191452396,368400000),
       (13,7.20,300500000,237283207,301700000),
       (14,7.40,500000000,268492764,475066843);
