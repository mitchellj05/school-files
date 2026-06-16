-- print output in columns
.mode column

-- enforce foreign key constraints
PRAGMA foreign_keys = True;

-- create table
CREATE TABLE Employee(
  employeeNumber INTEGER     NOT NULL,
  firstName      VARCHAR(15) NOT NULL,
  surname        VARCHAR(20) NOT NULL,
  address        VARCHAR(30) NOT NULL,
  contactNumber  VARCHAR(11) NOT NULL,
  drivingLicence BOOLEAN     NOT NULL,

  PRIMARY KEY (employeeNumber),
  
  CHECK (employeeNumber >= 1000 and employeeNumber < 9999),
  CHECK (LENGTH(contactNumber) = 11)
);

-- add data
INSERT INTO Employee VALUES (1012,'John','Smith','20 High Street','07782456128',TRUE);
INSERT INTO Employee VALUES (1100,'Susan','Brown','126 George Street','07991165241',TRUE);
INSERT INTO Employee VALUES (1116,'Teressa','Jones','24 Dundas Street','01316733989',TRUE);
INSERT INTO Employee VALUES (1175,'Martin','Daly','11 Edinburgh Road','01417676232',TRUE);
INSERT INTO Employee VALUES (1200,'Robbie','Durkin','12 Perth Street','01316111892',TRUE);
INSERT INTO Employee VALUES (2266,'Greg','Watson','7 McLeod Street','01317679999',TRUE);
INSERT INTO Employee VALUES (2287,'Wendy','Russell','2b McArthur Grove','01312261522',FALSE);
INSERT INTO Employee VALUES (3399,'Pamela','Anderson','17 St. John Street','07533398101',TRUE);
INSERT INTO Employee VALUES (3567,'Ian','Hunter','8 Halo Avenue','07222561187',TRUE);
INSERT INTO Employee VALUES (3777,'Jim','Kerr','16 Hay Drive','07733422512',TRUE);
INSERT INTO Employee VALUES (4235,'Lesley','Wallace','72 Sutherland Way','07888229371',FALSE);
INSERT INTO Employee VALUES (4442,'Kim','Pettigrew','144 Western Way','01316709098',TRUE);
INSERT INTO Employee VALUES (5699,'Steven','Johnstone','90a Main Street','01415543772',TRUE);
INSERT INTO Employee VALUES (6623,'Ali','Hussain','12/6 Salisbury Heights','01412298610',FALSE);
INSERT INTO Employee VALUES (7720,'Hasan','Abbas','88 Sighthill Drive','01412277934',TRUE);
INSERT INTO Employee VALUES (8872,'Jacek','Nowak','16/5 Argyle Place','01418983782',TRUE);
INSERT INTO Employee VALUES (8884,'Mirka','Kowalski','22 Henderson Row','01415522876',TRUE);
INSERT INTO Employee VALUES (9812,'Rudo','Hyper','64 Bleeker Street','01415562281',FALSE);
INSERT INTO Employee VALUES (9822,'Tisa','Sullivan','91 Fillian Way','01416576871',TRUE);