-- enable foreign key support
PRAGMA foreign_keys = ON;

-- print pretty columns
.mode column

CREATE TABLE authors (
  author_ref  INTEGER NOT NULL,
  forename    VARCHAR(20),
  surname     VARCHAR(20),
  nationality VARCHAR(20),
  dob         DATE,
  website     VARCHAR(50),

  PRIMARY KEY (author_ref)
);


CREATE TABLE books (
  type             VARCHAR(5),
  genre            VARCHAR(10),
  title            VARCHAR(50),
  author_ref       INTEGER(4) NOT NULL,
  publisher        VARCHAR(40),
  isbn             INTEGER(11) NOT NULL,
  publication_date DATE,
  pages            INTEGER(4),
  available        BOOLEAN,

  PRIMARY KEY (isbn),
  FOREIGN KEY (author_ref) REFERENCES authors(author_ref),
  
  CHECK (type IN ('Adult', 'Child'))
);


INSERT INTO authors VALUES (1862,'Nick','Hornby','British','1957-04-17','www.nickhorbyofficial.com');
INSERT INTO authors VALUES (1902,'Gareth','Owen','British','','www.garethowen.com');
INSERT INTO authors VALUES (2002,'Eric','Carle','American','1929-06-25','www.eric-carle/home.html');
INSERT INTO authors VALUES (2189,'Jeff','Kinney','American','1971-02-19','');
INSERT INTO authors VALUES (2715,'Jon','Blake','British','','https://jonblakeblog.wordpress.com');
INSERT INTO authors VALUES (2864,'Kenneth','Oppel','Canadian','1967-08-31','www.kennethoppel.ca');
INSERT INTO authors VALUES (3197,'Joanne','Rowling','British','1965-07-31','www.jkrowling.com');
INSERT INTO authors VALUES (3390,'Patricia','Cornwell','American','1956-06-9','www.patriciacornwell.com');
INSERT INTO authors VALUES (3507,'Nick','Hunter','British','','');
INSERT INTO authors VALUES (3713,'Mick','Inkpen','British','','');
INSERT INTO authors VALUES (3846,'Jack','Higgins','British','1929-07-27','');
INSERT INTO authors VALUES (4097,'Mary','Berry','British','1935-03-24','www.maryberry.co.uk');
INSERT INTO authors VALUES (4231,'Nicholas','Evans','British','1950-07-26','www.nicholasevens.com');
INSERT INTO authors VALUES (4527,'Frederick','Evans','British','1938-08-25','http://www.frederickforsyth.co.uk');


INSERT INTO books VALUES ('Adult','Fiction','About a Boy',1862,'Indigo','0575400951','2009-09-22',278,TRUE);
INSERT INTO books VALUES ('Child','Fantasy','Galactic Snapshots',2864,'Puffin','0140373683','2010-08-3',96,TRUE);
INSERT INTO books VALUES ('Child','Mystery','Harry Potter and the Chamber of Secrets',3197,'Bloomsbury','0747538492','1998-07-2',251,TRUE);
INSERT INTO books VALUES ('Child','Sport','London Olympics 2012',3507,'Raintree','1406223948','2011-07-5',32,TRUE);
INSERT INTO books VALUES ('Adult','Thriller','Point of Origin',3390,'Sphere','0751544787','2009-08-23',400,TRUE);
INSERT INTO books VALUES ('Adult','Autobiography','Recipe for Life',4097,'Penguin','1405912855','2014-02-27',432,FALSE);
INSERT INTO books VALUES ('Child','Fiction','Roboskool',2715,'Puffin','0140363240','2005-03-12',79,TRUE);
INSERT INTO books VALUES ('Child','Joke','Say Cheese',1902,'Corgi','0552529753','1996-11-7',64,TRUE);
INSERT INTO books VALUES ('Child','Fiction','Diary Of A Wimpy Kid',2189,'Penguin','0141347821','2012-10-31',240,TRUE);
INSERT INTO books VALUES ('Adult','Thriller','The Day of the Jackal',4527,'Hutchinson','0091073901','1971-06-07',358,TRUE);
INSERT INTO books VALUES ('Adult','Fiction','The Casual Vacancy',3197,'Little Brown Company','0751552860','2012-09-27',503,FALSE);
INSERT INTO books VALUES ('Adult','Fiction','The Horse Whisperer',4231,'Sphere','0751539368','2006-08-10',448,TRUE);
INSERT INTO books VALUES ('Adult','Mystery','The President''s Daughter',3846,'Penguin','0140269061','2011-11-14',400,TRUE);
INSERT INTO books VALUES ('Child','Fiction','The Very Hungry Caterpillar',2002,'Puffin','2067152998','1990-09-29',26,FALSE);
INSERT INTO books VALUES ('Child','Fiction','Threadbear',3713,'Hodder and Stoughton','0340531290','2007-07-5',32,TRUE);
