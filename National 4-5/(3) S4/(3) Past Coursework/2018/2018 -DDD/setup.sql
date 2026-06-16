-- enable foreign key support
PRAGMA foreign_keys = ON;

-- print pretty headers and columns
.header on
.mode column

CREATE TABLE Staff (
  staffID     VARCHAR(5) NOT NULL,
  forename    VARCHAR(20) NOT NULL,
  surname     VARCHAR(20) NOT NULL,
  address     VARCHAR(50) NOT NULL,
  topSkill    VARCHAR(5) NOT NULL,
  custRating  INTEGER,

  PRIMARY KEY (staffID),

  CHECK (length(staffID) = 5),
  CHECK (topSkill IN ('lawn', 'hedge', 'weeds')),
  CHECK (custRating >= 1 AND custRating <= 10)
);

CREATE TABLE Job (
  jobID         INTEGER       NOT NULL,
  jobDate       DATE          NOT NULL,
  jobTime       TIME          NOT NULL,
  custName      VARCHAR(40)   NOT NULL,
  custAddress   VARCHAR(50)   NOT NULL,
  custPostcode  VARCHAR(8)    NOT NULL,
  phoneNo       VARCHAR(11),
  task          VARCHAR(12)   NOT NULL,
  staffID       VARCHAR(5)    NOT NULL,

  PRIMARY KEY (jobID),
  FOREIGN KEY (staffID) REFERENCES Staff(staffID),

  CHECK (jobTime >= '9:00' AND jobTime <= '18:00'),
  CHECK (task IN ('Lawn Mowed', 'Hedge Cut', 'Weeds Pulled'))
);

INSERT INTO Staff VALUES 
  ('DS001', 'Alison', 'Duncan', '44 Main Street, Falkirk, FK47 5RT', 'lawn', 10),
  ('DS003', 'Jessica', 'Lawrie', '18 Stevenson view, Denny, FK76 6TU', 'hedge', 9),
  ('DS004', 'Peter', 'Falconer', '21/4 Kier Place, Alva, ST12 7TR', 'lawn', 8),
  ('DS007', 'Ryan', 'MacGowan', '122 Moray Place, Falkirk, FK93 5RD', 'hedge', 7),
  ('DS010', 'Martyn', 'Crawford', '5/2 McLeod Street, Denny, FK77 3KT', 'hedge', 6),
  ('DS014', 'Brenda', 'Learmonth', '42 High Street, Alloa, FK 82 6GF', 'hedge', 6),
  ('DS016', 'Keegan', 'Cuthbert', '9 Thames Rise, Falkirk, FK99 2SD', 'lawn', 5),
  ('DS019', 'Ruksana', 'Ali', '62 Riverside drive, Alva, FK71 2FS', 'lawn', 4),
  ('DS021', 'Derek', 'Strimmer', '12 Leaf Avenue, Bowness, FK86 6FG', 'weeds', 6),
  ('DS026', 'Artur', 'Luts', '18 Moat Street, Denny, FK92 6GH', 'hedge', 4),
  ('DS027', 'Signy', 'Saar', '2 Glasgow Road, Falkirk, FK70 8HR', 'lawn', 3),
  ('DS028', 'Claudia', 'Silva', '102 Bannockburn drive, Alva, FK91 4RE', 'weeds', 2),
  ('DS055', 'Brigitta', 'Corduneanu', '92 Evergreen drive, Alva, FK 90 7FG', 'lawn', 2),
  ('DS061', 'Susan', 'Brown', '62 Riverside drive, Alva, FK71 2FS', 'hedge', 1),
  ('DS063', 'Chris', 'Kelly', '2 Glasgow Road, Falkirk, FK70 8HR', 'weeds', 1),
  ('DS066', 'Imad', 'Khan', '42 High Street, Alloa, FK 82 6GF', 'lawn', 1);