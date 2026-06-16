-- print output in columns
.mode column

-- create tables
CREATE TABLE members (
  member_id  INTEGER,
  last_name  VARCHAR(30),
  first_name VARCHAR(30),
  age        INTEGER,
  email      VARCHAR(50)
);

CREATE TABLE posts (
  post_id         INTEGER,
  title           VARCHAR(4),
  post_date       DATE,
  number_of_words INTEGER,
  member_id       INTEGER   
);

-- add data
INSERT INTO members VALUES (1, 'Davies', 'Jim', 27, 'jimbo31@scotmail.co.uk');
INSERT INTO members VALUES (2, 'McKay', 'Ann', NUll, 'mckaya218@hotmail.com');
INSERT INTO members VALUES (3, 'Roberts', 'Carol', 35, 'croberts123@teachers.com');
INSERT INTO members VALUES (4, 'Singh', 'Hardeep', 24, 'singh832@scotmail.co.uk');

INSERT INTO posts VALUES (1, 'Welcome to the SurfScotland blog', '2016-08-01', 228, 1);
INSERT INTO posts VALUES (2, 'Belhaven Bay Dunbar', '2016-08-08', 176, 1);
INSERT INTO posts VALUES (3, 'Coldingham Bay Scottish Borders', '2016-08-13', 58, 1);
INSERT INTO posts VALUES (4, 'Hebridean Surf Lewis', '2016-08-15', 145, 2);
INSERT INTO posts VALUES (5, 'Broch Open Surf Competition', '2016-08-15', 73, 4);
INSERT INTO posts VALUES (6, 'River Forth Bombora', '2016-08-15', 105, 3);
