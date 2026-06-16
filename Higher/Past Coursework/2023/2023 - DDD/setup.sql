-- print output in columns
.mode column

-- enforce foreign key constraints
PRAGMA foreign_keys = ON;

CREATE TABLE Customer(
  customerID   VARCHAR(5)  NOT NULL,
  forename     VARCHAR(30) NOT NULL,
  surname      VARCHAR(30) NOT NULL,
  houseNumber  INTEGER     NOT NULL,
  streetName   VARCHAR(50) NOT NULL,
  postcode     VARCHAR(8)  NOT NULL,
  emailAddress VARCHAR(50) NOT NULL,
  
  PRIMARY KEY (customerID) 
);

CREATE TABLE CustOrder(
  orderID    VARCHAR(7) NOT NULL,
  orderDate  DATE       NOT NULL,
  customerID VARCHAR(5) NOT NULL,

  PRIMARY KEY (orderID),
  FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

CREATE TABLE Gnome(
  gnomeID     VARCHAR(5)   NOT NULL,
  gnomeName   VARCHAR(25)  NOT NULL,
  description VARCHAR(150) NOT NULL,
  unitPrice   INTEGER      NOT NULL,

  PRIMARY KEY (gnomeID)
);

CREATE TABLE GnomePurchase(
  gnomePurchaseID VARCHAR(6) NOT NULL,
  orderID         VARCHAR(7) NOT NULL,
  gnomeID         VARCHAR(5) NOT NULL,
  quantity        INTEGER    NOT NULL,

  PRIMARY KEY (gnomePurchaseID),
  FOREIGN KEY (orderID) REFERENCES CustOrder(orderID),
  FOREIGN KEY (gnomeID) REFERENCES Gnome(gnomeID)
);

INSERT INTO Customer VALUES('c0001','Klara','Couch',67,'Haven Boulevard','GU26 6TQ','klara.couch@coolmail.com');
INSERT INTO Customer VALUES('c0002','Emmanuel','Fadipe',98,'Onyx Street','WA1 3QN','mannyfadipe@beemail.com');
INSERT INTO Customer VALUES('c0003','Marion','Sheppard',53,'Honor Row','BS27 3TN','marion.sheppard@yeehaa.com');
INSERT INTO Customer VALUES('c0004','Ravi','Aziz',136,'Heart Way','WA1 2LD','ravi.aziz@jack.net');
INSERT INTO Customer VALUES('c0005','Ada','Bautista',14,'Sycamore Avenue','NE4 9PS','ada@coolmail.com');
INSERT INTO Customer VALUES('c0006','Arsalan','Southern',160,'Chestnut Street','HR9 7QX','arsalan.southern@yeehaa.com');
INSERT INTO Customer VALUES('c0007','Kacper','Libera',44,'Chapel Avenue','BA1 5BW','kacper@hardy.biz');
INSERT INTO Customer VALUES('c0008','Kenan','Ali',199,'Bloomfield Route','BT6 0ES','kenan@beemail.com');
INSERT INTO Customer VALUES('c0009','Humairaa','Barajas',52,'Hope Way','HR9 7XQ','humairaa.barajas2@yeehaa.com');
INSERT INTO Customer VALUES('c0010','Gerard','Gallegos',190,'Victory Row','B75 6TG','gerard.gallegos@yeehaa.com');
INSERT INTO Customer VALUES('c0011','Raheem','Saleem',4,'Nova Boulevard','OL15 9HR','raheem@ferry.com');
INSERT INTO Customer VALUES('c0012','Shani','Navarro',7,'Moon Street','DA16 2QQ','shani.navarro@yeehaa.com');
INSERT INTO Customer VALUES('c0013','Carlo','Hamer',162,'Green Lane','OX20 1TH','carlo.hamertorp@beemail.com');
INSERT INTO Customer VALUES('c0014','Deon','Bonilla',52,'West Way','SO53 1GR','deon.bonilla@heller.com');
INSERT INTO Customer VALUES('c0015','Tre','Steele',99,'High Route','SK7 3LQ','tre.steeler@beemail.com');
INSERT INTO Customer VALUES('c0016','Dominika','Marchewka',155,'Prince Route','NG17 2HU','dom.marchewka@coolmail.com');
INSERT INTO Customer VALUES('c0017','Hareem','Coleman',164,'Underwood Avenue','CA13 0QL','hareem.coleman@coolmail.com');
INSERT INTO Customer VALUES('c0018','Vinay','Knight',181,'Sycamore Lane','GY1 4AD','vinay.knight@yeehaa.com');
INSERT INTO Customer VALUES('c0019','Cole','Dunlop',169,'Blossom Route','SE6 3BH','cole.dunlop@coolmail.com');
INSERT INTO Customer VALUES('c0020','Mahi','Andrade',185,'Princess Lane','B77 3BG','mahi.andrade@turner.com');
INSERT INTO Customer VALUES('c0021','Oscar','Tate',25,'Liberty Boulevard','EX33 1AR','oscar.tate@yeehaa.com');
INSERT INTO Customer VALUES('c0022','Ashwin','Bateman',173,'Cross Street','LU4 9JQ','ashwin.bateman@coolmail.com');
INSERT INTO Customer VALUES('c0023','Ayyan','Brennan',153,'Jade Route','CV10 7JL','ayyan.brennan@boehm.info');
INSERT INTO Customer VALUES('c0024','Ida','Simmonds',153,'Mount Passage','FY4 1NU','ida.simmond@yeehaa.com');
INSERT INTO Customer VALUES('c0025','Alastair','Maynard',198,'Providence Boulevard','PR7 4GZ','alastair.maynard@coolmail.com');
INSERT INTO Customer VALUES('c0026','Gurveer','Thompson',108,'Windmill Boulevard','LN2 4BU','gurveer.thompson@gutkowski.com');
INSERT INTO Customer VALUES('c0027','Farhana','Deacon',8,'Brewer Row','M12 4UU','farhana@beemail.com');
INSERT INTO Customer VALUES('c0028','Melissa','Beltran',109,'Anchor Way','BT30 7UG','melissa.beltran@jacobs.biz');
INSERT INTO Customer VALUES('c0029','May','Hawes',138,'Oceanview Street','TS22 5FS','may@von.org');
INSERT INTO Customer VALUES('c0030','Neal','Salt',139,'Barley Route','GU26 6TQ','neal.salt@dooley.org');
INSERT INTO Customer VALUES('c0031','David','Ybet',18,'Sugarplum Avenue','WA1 3QN','dave.ybet@coolmail.com');
INSERT INTO Customer VALUES('c0032','Marilyn','Meza',61,'Clarity Street','BS27 3TN','marilyne@beemail.com');
INSERT INTO Customer VALUES('c0033','Dominik','Edmonds',160,'Long Boulevard','WA1 2LD','dominik.edmonds@yeehaa.com');
INSERT INTO Customer VALUES('c0034','Emilie','Strong',199,'Green Street','NE4 9PS','emilie.strong@beemail.com');
INSERT INTO Customer VALUES('c0035','Fahima','Mcclain',39,'Windmill Passage','HR9 7QX','fahima.mcclain@feeney.com');
INSERT INTO Customer VALUES('c0036','Jun','Hirst',184,'Lily Row','BA1 5BW','jun.hirst@lowe.com');
INSERT INTO Customer VALUES('c0037','Tea','Dupont',6,'School Street','BT6 0ES','tea.dupont@yeehaa.com');
INSERT INTO Customer VALUES('c0038','Derek','Vega',151,'Lower Passage','HR9 7XQ','derek.vega@coolmail.com');
INSERT INTO Customer VALUES('c0039','Nayla','Mccray',6,'East Passage','B75 6TG','nayla.mccray@yeehaa.com');
INSERT INTO Customer VALUES('c0040','Hope','Uti',128,'Diamond Row','N17 9SJ','hope.uti@coolmail.com');
INSERT INTO Customer VALUES('c0041','Ayden','Harrell',159,'Theater Avenue','LU3 2AL','ayden.harrell@hackett.org');
INSERT INTO Customer VALUES('c0042','Caiden','Hebert',76,'Bard Row','BL3 3TG','caiden.hebert@coolmail.com');
INSERT INTO Customer VALUES('c0043','Abdurahman','Luna',33,'North Avenue','DE22 1JZ','abdurahman.luna@coolmail.com');
INSERT INTO Customer VALUES('c0044','Mack','Preston',104,'Shade Street','PE22 0JG','mack.preston@yeehaa.com');
INSERT INTO Customer VALUES('c0045','Arissa','Davenport',114,'Coastline Avenue','SA5 4BW','arissa.davenporte@coolmail.com');
INSERT INTO Customer VALUES('c0046','Asha','Bob',112,'Winter Boulevard','BL3 1SR','asha.bobl@yeehaa.info');
INSERT INTO Customer VALUES('c0047','Samuel','Ngand''u',196,'Seaview Row','DD2 2BB','sam.ngandu@yeehaa.com');
INSERT INTO Customer VALUES('c0048','Kieran','Brown',107,'Crown Lane','M41 6DU','kieran.brown@coolmail.com');
INSERT INTO Customer VALUES('c0049','Fern','Orozco',1,'Emerald Avenue','GU31 5SP','fern@beemail.com');
INSERT INTO Customer VALUES('c0050','Roma','Ross',50,'General Street','WF2 7EY','roma@beemail.com');
INSERT INTO Customer VALUES('c0051','Shannen','Senior',155,'Harbor Row','BT19 6WN','shannen.senior@yeehaa.com');
INSERT INTO Customer VALUES('c0052','Manveer','Duggan',1,'Cave Avenue','BA14 6JS','manveer.duggan@coolmail.com');
INSERT INTO Customer VALUES('c0053','Ami','Clayton',101,'Long Lane','TA21 8HZ','ami.clayton@beemail.com');
INSERT INTO Customer VALUES('c0054','Melina','Santiago',40,'Green Passage','TD8 6NJ','melina.santiago@coolmail.com');
INSERT INTO Customer VALUES('c0055','Cain','Wilson',136,'Delta Route','DE55 1AE','cain.wilson@coolmail.com');
INSERT INTO Customer VALUES('c0056','Neil','Bellamy',156,'Wellness Avenue','OL11 2BH','neil.bellamy@coolmail.com');
INSERT INTO Customer VALUES('c0057','Griff','Croft',65,'Vale Avenue','BS32 8HL','griff.croft@yeehaa.com');
INSERT INTO Customer VALUES('c0058','Sandy','Kerr',41,'Cliff Avenue','OX1 4AZ','gail.lloyd@coolmail.com');
INSERT INTO Customer VALUES('c0059','Sebastien','Livingston',4,'Blossom Passage','KA9 2EH','sebastien.livingston@beemail.com');
INSERT INTO Customer VALUES('c0060','Menaal','Molloy',154,'Blessing Lane','WS11 5BU','menaal.molloy@yeehaa.com');
INSERT INTO Customer VALUES('c0061','Martha','Novak',22,'Brewer Lane','TQ9 5PN','martha.novak@coolmail.com');
INSERT INTO Customer VALUES('c0062','Leigh','Haney',142,'Emerald Route','LS8 3BX','leigh.haney@yeehaa.com');
INSERT INTO Customer VALUES('c0063','Joann','Stein',98,'Honor Street','PL17 8HW','joann.stein@yeehaa.com');
INSERT INTO Customer VALUES('c0064','Ed','Payne',19,'Art Row','TW13 4JL','ed.payneh@coolmail.com');
INSERT INTO Customer VALUES('c0065','Alexa','Mcgowan',158,'Cavern Street','EX15 2AB','alexa.mcgowan@beemail.com');
INSERT INTO Customer VALUES('c0066','Akshay','Holmes',125,'Delta Street','SR4 9AY','akshay.holmes@beemail.com');
INSERT INTO Customer VALUES('c0067','Lorraine','Doyle',127,'Vermilion Lane','SE9 2LP','lorraine.doyle@yeehaa.com');
INSERT INTO Customer VALUES('c0068','Ahsan','Mckeown',169,'Gilded Route','OX16 9FH','ahsan.mckeow@beemail.com');
INSERT INTO Customer VALUES('c0069','Maliha','Ashton',172,'Prince Avenue','CH45 4QL','maliha.ashton@@yeehaa.com');
INSERT INTO Customer VALUES('c0070','Faizan','Sherman',58,'Cypress Passage','FY2 9PS','faizan.sherman@@yeehaa.com');
INSERT INTO Customer VALUES('c0071','Mollie','Howell',162,'Windmill Avenue','SM2 7HZ','mollie.howell@yeehaa.com');
INSERT INTO Customer VALUES('c0072','Gianni','Sawyer',33,'Sun Street','NN1 3ND','gianni.sawyer@coolmail.com');
INSERT INTO Customer VALUES('c0073','Montgomery','Estrada',89,'Brewer Passage','EH33 2NZ','montgomery.estrada@beemail.com');
INSERT INTO Customer VALUES('c0074','Sulayman','Williams',53,'Orchid Passage','ME10 1JG','sulayman.williams@coolmail.com');
INSERT INTO Customer VALUES('c0075','Mysha','Valdez',13,'Ruby Lane','M16 0HA','mysha@yeehaa.com');
INSERT INTO Customer VALUES('c0076','Veronica','Blackmore',72,'Wetland Avenue','LE12 9EW','veronica@coolmail.com');
INSERT INTO Customer VALUES('c0077','Jillian','Ewing',102,'Beachside Street','HX7 5RT','jillian.ewing@yeehaa.com');
INSERT INTO Customer VALUES('c0078','Jada','Sharp',180,'Pearl Passage','BT92 6HU','jada.sharp@coolmail.com');
INSERT INTO Customer VALUES('c0079','Maha','Weber',111,'Bliss Lane','G53 5JA','maha.weber@yeehaa.com');
INSERT INTO Customer VALUES('c0080','Ella','Ferrell',189,'Colonel Boulevard','LA11 6PU','ella.ferrell@coolmail.com');
INSERT INTO Customer VALUES('c0081','Muhamed','Adamson',177,'Globe Lane','DT2 7AF','muhamed.zdamson@coolmail.com');
INSERT INTO Customer VALUES('c0082','Calista','Heath',119,'Ferry Row','GU52 7SQ','calista.heath@beemail.com');
INSERT INTO Customer VALUES('c0083','Alanah','Rossi',171,'Grand Boulevard','B67 9EL','alanah.rossi@yeehaa.com');
INSERT INTO Customer VALUES('c0084','Jonny','Rodrigues',129,'Brook Way','IM3 2AH','jonny.rodriguesn@yeehaa.com');
INSERT INTO Customer VALUES('c0085','Ava-Grace','Barry',38,'Seacoast Boulevard','ME17 3LW','ava.barry@beemail.com');
INSERT INTO Customer VALUES('c0086','Betsy','Burns',109,'Gem Row','ME19 4GJ','betsy.burns@yeehaa.com');
INSERT INTO Customer VALUES('c0087','Dulcie','Howells',130,'Peace Route','S43 1HA','dulcie.howells@beemail.com');
INSERT INTO Customer VALUES('c0088','Dawid','Chambers',63,'Orchard Lane','OL9 9EE','dawid.chamber@yeehaa.com');
INSERT INTO Customer VALUES('c0089','Vikki','Ho',57,'Cliff Way','NG5 5RJ','vikki.ho@yeehaa.com');
INSERT INTO Customer VALUES('c0090','Kornelia','Cooley',98,'Palm Lane','CA25 5AZ','kornelia.cooley@coolmail.com');

INSERT INTO CustOrder VALUES('ord0001','2022-02-02','c0001');
INSERT INTO CustOrder VALUES('ord0002','2022-02-02','c0001');
INSERT INTO CustOrder VALUES('ord0003','2022-02-02','c0002');
INSERT INTO CustOrder VALUES('ord0004','2022-02-02','c0002');
INSERT INTO CustOrder VALUES('ord0005','2022-02-03','c0002');
INSERT INTO CustOrder VALUES('ord0006','2022-02-03','c0002');
INSERT INTO CustOrder VALUES('ord0007','2022-02-03','c0003');
INSERT INTO CustOrder VALUES('ord0008','2022-02-03','c0006');
INSERT INTO CustOrder VALUES('ord0009','2022-02-03','c0010');
INSERT INTO CustOrder VALUES('ord0010','2022-02-03','c0016');
INSERT INTO CustOrder VALUES('ord0011','2022-02-03','c0023');
INSERT INTO CustOrder VALUES('ord0012','2022-02-03','c0008');
INSERT INTO CustOrder VALUES('ord0013','2022-02-04','c0012');
INSERT INTO CustOrder VALUES('ord0014','2022-02-05','c0019');
INSERT INTO CustOrder VALUES('ord0015','2022-02-05','c0024');
INSERT INTO CustOrder VALUES('ord0016','2022-02-05','c0029');
INSERT INTO CustOrder VALUES('ord0017','2022-02-05','c0033');
INSERT INTO CustOrder VALUES('ord0018','2022-02-07','c0036');
INSERT INTO CustOrder VALUES('ord0019','2022-02-07','c0040');
INSERT INTO CustOrder VALUES('ord0020','2022-02-09','c0043');
INSERT INTO CustOrder VALUES('ord0021','2022-02-09','c0047');
INSERT INTO CustOrder VALUES('ord0022','2022-02-09','c0052');
INSERT INTO CustOrder VALUES('ord0023','2022-02-09','c0055');
INSERT INTO CustOrder VALUES('ord0024','2022-02-09','c0058');
INSERT INTO CustOrder VALUES('ord0025','2022-02-12','c0062');
INSERT INTO CustOrder VALUES('ord0026','2022-02-12','c0067');
INSERT INTO CustOrder VALUES('ord0027','2022-02-12','c0070');
INSERT INTO CustOrder VALUES('ord0028','2022-02-12','c0074');
INSERT INTO CustOrder VALUES('ord0029','2022-02-12','c0081');
INSERT INTO CustOrder VALUES('ord0030','2022-02-14','c0083');
INSERT INTO CustOrder VALUES('ord0031','2022-02-14','c0084');
INSERT INTO CustOrder VALUES('ord0032','2022-02-14','c0088');
INSERT INTO CustOrder VALUES('ord0033','2022-02-14','c0090');
INSERT INTO CustOrder VALUES('ord0034','2022-02-14','c0003');
INSERT INTO CustOrder VALUES('ord0035','2022-02-14','c0008');
INSERT INTO CustOrder VALUES('ord0036','2022-02-14','c0010');
INSERT INTO CustOrder VALUES('ord0037','2022-02-14','c0012');
INSERT INTO CustOrder VALUES('ord0038','2022-02-14','c0015');
INSERT INTO CustOrder VALUES('ord0039','2022-02-14','c0016');
INSERT INTO CustOrder VALUES('ord0040','2022-02-20','c0019');
INSERT INTO CustOrder VALUES('ord0041','2022-02-20','c0022');
INSERT INTO CustOrder VALUES('ord0042','2022-02-23','c0024');
INSERT INTO CustOrder VALUES('ord0043','2022-02-24','c0030');
INSERT INTO CustOrder VALUES('ord0044','2022-02-26','c0035');
INSERT INTO CustOrder VALUES('ord0045','2022-02-26','c0042');
INSERT INTO CustOrder VALUES('ord0046','2022-02-26','c0046');
INSERT INTO CustOrder VALUES('ord0047','2022-02-28','c0051');
INSERT INTO CustOrder VALUES('ord0048','2022-03-03','c0060');
INSERT INTO CustOrder VALUES('ord0049','2022-03-03','c0067');
INSERT INTO CustOrder VALUES('ord0050','2022-03-03','c0007');
INSERT INTO CustOrder VALUES('ord0051','2022-03-03','c0012');
INSERT INTO CustOrder VALUES('ord0052','2022-03-03','c0014');
INSERT INTO CustOrder VALUES('ord0053','2022-03-03','c0020');
INSERT INTO CustOrder VALUES('ord0054','2022-03-03','c0023');
INSERT INTO CustOrder VALUES('ord0055','2022-03-03','c0028');
INSERT INTO CustOrder VALUES('ord0056','2022-03-07','c0032');
INSERT INTO CustOrder VALUES('ord0057','2022-03-08','c0037');
INSERT INTO CustOrder VALUES('ord0058','2022-03-09','c0044');
INSERT INTO CustOrder VALUES('ord0059','2022-03-10','c0047');
INSERT INTO CustOrder VALUES('ord0060','2022-03-11','c0050');
INSERT INTO CustOrder VALUES('ord0061','2022-03-14','c0054');
INSERT INTO CustOrder VALUES('ord0062','2022-03-14','c0059');
INSERT INTO CustOrder VALUES('ord0063','2022-03-14','c0062');
INSERT INTO CustOrder VALUES('ord0064','2022-03-14','c0065');
INSERT INTO CustOrder VALUES('ord0065','2022-03-22','c0066');
INSERT INTO CustOrder VALUES('ord0066','2022-03-22','c0069');
INSERT INTO CustOrder VALUES('ord0067','2022-03-22','c0071');
INSERT INTO CustOrder VALUES('ord0068','2022-03-23','c0074');
INSERT INTO CustOrder VALUES('ord0069','2022-03-24','c0080');
INSERT INTO CustOrder VALUES('ord0070','2022-03-25','c0082');
INSERT INTO CustOrder VALUES('ord0071','2022-03-26','c0085');
INSERT INTO CustOrder VALUES('ord0072','2022-03-26','c0088');
INSERT INTO CustOrder VALUES('ord0073','2022-03-26','c0090');
INSERT INTO CustOrder VALUES('ord0074','2022-03-26','c0007');
INSERT INTO CustOrder VALUES('ord0075','2022-03-26','c0014');
INSERT INTO CustOrder VALUES('ord0076','2022-03-27','c0022');
INSERT INTO CustOrder VALUES('ord0077','2022-03-28','c0026');
INSERT INTO CustOrder VALUES('ord0078','2022-03-29','c0030');
INSERT INTO CustOrder VALUES('ord0079','2022-03-30','c0035');
INSERT INTO CustOrder VALUES('ord0080','2022-03-31','c0044');
INSERT INTO CustOrder VALUES('ord0081','2022-04-01','c0047');
INSERT INTO CustOrder VALUES('ord0082','2022-04-02','c0053');
INSERT INTO CustOrder VALUES('ord0083','2022-04-02','c0056');
INSERT INTO CustOrder VALUES('ord0084','2022-04-02','c0060');
INSERT INTO CustOrder VALUES('ord0085','2022-04-02','c0065');
INSERT INTO CustOrder VALUES('ord0086','2022-04-03','c0068');
INSERT INTO CustOrder VALUES('ord0087','2022-04-04','c0069');
INSERT INTO CustOrder VALUES('ord0088','2022-04-05','c0070');
INSERT INTO CustOrder VALUES('ord0089','2022-04-05','c0071');
INSERT INTO CustOrder VALUES('ord0090','2022-04-05','c0073');
INSERT INTO CustOrder VALUES('ord0091','2022-04-05','c0047');
INSERT INTO CustOrder VALUES('ord0092','2022-04-06','c0050');
INSERT INTO CustOrder VALUES('ord0093','2022-04-06','c0055');
INSERT INTO CustOrder VALUES('ord0094','2022-04-06','c0058');
INSERT INTO CustOrder VALUES('ord0095','2022-04-06','c0068');
INSERT INTO CustOrder VALUES('ord0096','2022-04-06','c0073');
INSERT INTO CustOrder VALUES('ord0097','2022-04-07','c0079');
INSERT INTO CustOrder VALUES('ord0098','2022-04-08','c0080');
INSERT INTO CustOrder VALUES('ord0099','2022-04-09','c0083');
INSERT INTO CustOrder VALUES('ord0100','2022-04-10','c0001');

INSERT INTO Gnome VALUES('gn001','Maximilian','Solar Garden Gnome',8);
INSERT INTO Gnome VALUES('gn002','Aiko','Outdoor Gnome Reading a Book Statue',7);
INSERT INTO Gnome VALUES('gn003','Belita','Mariachi Garden Gnome Statue',15);
INSERT INTO Gnome VALUES('gn004','Danny','Gnome Statue With solar powered Globe Lights',12);
INSERT INTO Gnome VALUES('gn005','Koemi','Gnome With Sunglasses',10);
INSERT INTO Gnome VALUES('gn006','Miette','Gnomes Hanging Swing Outdoor',12);
INSERT INTO Gnome VALUES('gn007','Rowan','Cottage Gnome Statue',8);
INSERT INTO Gnome VALUES('gn008','Tulla','Gnome On Toilet',13);
INSERT INTO Gnome VALUES('gn009','Yves','Hanging Garden Gnome',15);
INSERT INTO Gnome VALUES('gn010','Babak','Old Man Garden Gnome',11);
INSERT INTO Gnome VALUES('gn011','Dell','Knothole Gnome',8);
INSERT INTO Gnome VALUES('gn012','Fishel','Swinging on Rope Outdoor Decorative Gnome',13);
INSERT INTO Gnome VALUES('gn013','Gorman','Fishing Gnome Garden Statue',5);
INSERT INTO Gnome VALUES('gn014','Hewitt','Outdoor Gnome and Bird Feeder Statue',7);
INSERT INTO Gnome VALUES('gn015','Kane','Tree Hugger Gnome',6);
INSERT INTO Gnome VALUES('gn016','Lorcan','Pixie Sat on Mushrooms Outdoor Garden',11);
INSERT INTO Gnome VALUES('gn017','Tomlin','Bird Feeder Statue',14);
INSERT INTO Gnome VALUES('gn018','Luca','Garden Gnome with Squirrel',11);
INSERT INTO Gnome VALUES('gn019','Nicola','Zen Gnome Statue',8);
INSERT INTO Gnome VALUES('gn020','Zhenya','Cat Eating Gnome Garden Ornament',15);
INSERT INTO Gnome VALUES('gn021','Garder','Armory Mosaic with a Lantern Garden',11);
INSERT INTO Gnome VALUES('gn022','Wayrick','Spirit Garden Wall Decor',11);
INSERT INTO Gnome VALUES('gn023','Eowyn','Pixie Outdoor Garden Statue',12);
INSERT INTO Gnome VALUES('gn024','Aldon','Mystical Treant Man Wall Decor',15);
INSERT INTO Gnome VALUES('gn025','Samuel','Sunflower Gnome Statue',17);
INSERT INTO Gnome VALUES('gn026','Coimin','Toadstool Figurine with Solar Light',7);
INSERT INTO Gnome VALUES('gn027','Carlin','Troll Riding Motorcycle Statue',6);
INSERT INTO Gnome VALUES('gn028','Jenna','Stinky Gnome',14);
INSERT INTO Gnome VALUES('gn029','Maleah','Squirrel Garden Statue',6);
INSERT INTO Gnome VALUES('gn030','Posy','Gnome with Flower Garden Statue',15);
INSERT INTO Gnome VALUES('gn031','Tawnie','Fairy Garden Set',14);
INSERT INTO Gnome VALUES('gn032','Viveca','Gnome with 2 Squirrels',7);
INSERT INTO Gnome VALUES('gn033','Arno','Pixie Sat on Mushroom Thinking',10);
INSERT INTO Gnome VALUES('gn034','Cerin','Kiss and Tell Gnomes',6);
INSERT INTO Gnome VALUES('gn035','Egan','Gnome with Bird on Hand',10);

INSERT INTO GnomePurchase VALUES('go0001','ord0001','gn001',4);
INSERT INTO GnomePurchase VALUES('go0002','ord0001','gn012',1);
INSERT INTO GnomePurchase VALUES('go0003','ord0001','gn023',1);
INSERT INTO GnomePurchase VALUES('go0004','ord0001','gn032',5);
INSERT INTO GnomePurchase VALUES('go0005','ord0001','gn035',5);
INSERT INTO GnomePurchase VALUES('go0006','ord0002','gn022',3);
INSERT INTO GnomePurchase VALUES('go0007','ord0002','gn026',4);
INSERT INTO GnomePurchase VALUES('go0008','ord0002','gn030',5);
INSERT INTO GnomePurchase VALUES('go0009','ord0003','gn001',3);
INSERT INTO GnomePurchase VALUES('go0010','ord0003','gn002',4);
INSERT INTO GnomePurchase VALUES('go0011','ord0003','gn010',2);
INSERT INTO GnomePurchase VALUES('go0012','ord0003','gn011',1);
INSERT INTO GnomePurchase VALUES('go0013','ord0003','gn028',5);
INSERT INTO GnomePurchase VALUES('go0014','ord0003','gn029',1);
INSERT INTO GnomePurchase VALUES('go0015','ord0003','gn034',4);
INSERT INTO GnomePurchase VALUES('go0016','ord0003','gn035',4);
INSERT INTO GnomePurchase VALUES('go0017','ord0004','gn030',5);
INSERT INTO GnomePurchase VALUES('go0018','ord0005','gn024',4);
INSERT INTO GnomePurchase VALUES('go0019','ord0006','gn006',2);
INSERT INTO GnomePurchase VALUES('go0020','ord0007','gn006',1);
INSERT INTO GnomePurchase VALUES('go0021','ord0007','gn014',3);
INSERT INTO GnomePurchase VALUES('go0022','ord0007','gn016',4);
INSERT INTO GnomePurchase VALUES('go0023','ord0007','gn018',2);
INSERT INTO GnomePurchase VALUES('go0024','ord0008','gn020',5);
INSERT INTO GnomePurchase VALUES('go0025','ord0008','gn024',5);
INSERT INTO GnomePurchase VALUES('go0026','ord0009','gn026',3);
INSERT INTO GnomePurchase VALUES('go0027','ord0010','gn029',1);
INSERT INTO GnomePurchase VALUES('go0028','ord0011','gn032',4);
INSERT INTO GnomePurchase VALUES('go0029','ord0012','gn035',1);
INSERT INTO GnomePurchase VALUES('go0030','ord0012','gn002',5);
INSERT INTO GnomePurchase VALUES('go0031','ord0012','gn004',3);
INSERT INTO GnomePurchase VALUES('go0032','ord0013','gn006',3);
INSERT INTO GnomePurchase VALUES('go0033','ord0014','gn008',5);
INSERT INTO GnomePurchase VALUES('go0034','ord0014','gn011',4);
INSERT INTO GnomePurchase VALUES('go0035','ord0014','gn012',2);
INSERT INTO GnomePurchase VALUES('go0036','ord0015','gn015',2);
INSERT INTO GnomePurchase VALUES('go0037','ord0016','gn019',3);
INSERT INTO GnomePurchase VALUES('go0038','ord0017','gn020',3);
INSERT INTO GnomePurchase VALUES('go0039','ord0018','gn023',1);
INSERT INTO GnomePurchase VALUES('go0040','ord0018','gn026',3);
INSERT INTO GnomePurchase VALUES('go0041','ord0018','gn029',4);
INSERT INTO GnomePurchase VALUES('go0042','ord0018','gn033',1);
INSERT INTO GnomePurchase VALUES('go0043','ord0019','gn034',2);
INSERT INTO GnomePurchase VALUES('go0044','ord0020','gn001',3);
INSERT INTO GnomePurchase VALUES('go0045','ord0020','gn003',4);
INSERT INTO GnomePurchase VALUES('go0046','ord0021','gn005',5);
INSERT INTO GnomePurchase VALUES('go0047','ord0022','gn006',5);
INSERT INTO GnomePurchase VALUES('go0048','ord0023','gn013',4);
INSERT INTO GnomePurchase VALUES('go0049','ord0024','gn018',2);
INSERT INTO GnomePurchase VALUES('go0050','ord0024','gn019',4);
INSERT INTO GnomePurchase VALUES('go0051','ord0024','gn025',2);
INSERT INTO GnomePurchase VALUES('go0052','ord0024','gn026',2);
INSERT INTO GnomePurchase VALUES('go0053','ord0024','gn030',5);
INSERT INTO GnomePurchase VALUES('go0054','ord0024','gn033',3);
INSERT INTO GnomePurchase VALUES('go0055','ord0025','gn035',4);
INSERT INTO GnomePurchase VALUES('go0056','ord0026','gn001',1);
INSERT INTO GnomePurchase VALUES('go0057','ord0027','gn002',3);
INSERT INTO GnomePurchase VALUES('go0058','ord0028','gn006',4);
INSERT INTO GnomePurchase VALUES('go0059','ord0029','gn012',4);
INSERT INTO GnomePurchase VALUES('go0060','ord0030','gn016',3);
INSERT INTO GnomePurchase VALUES('go0061','ord0031','gn020',5);
INSERT INTO GnomePurchase VALUES('go0062','ord0032','gn022',4);
INSERT INTO GnomePurchase VALUES('go0063','ord0033','gn025',1);
INSERT INTO GnomePurchase VALUES('go0064','ord0034','gn027',3);
INSERT INTO GnomePurchase VALUES('go0065','ord0035','gn030',4);
INSERT INTO GnomePurchase VALUES('go0066','ord0036','gn031',1);
INSERT INTO GnomePurchase VALUES('go0067','ord0037','gn032',1);
INSERT INTO GnomePurchase VALUES('go0068','ord0038','gn034',2);
INSERT INTO GnomePurchase VALUES('go0069','ord0038','gn035',3);
INSERT INTO GnomePurchase VALUES('go0070','ord0038','gn002',3);
INSERT INTO GnomePurchase VALUES('go0071','ord0039','gn004',3);
INSERT INTO GnomePurchase VALUES('go0072','ord0040','gn008',2);
INSERT INTO GnomePurchase VALUES('go0073','ord0041','gn009',1);
INSERT INTO GnomePurchase VALUES('go0074','ord0042','gn012',3);
INSERT INTO GnomePurchase VALUES('go0075','ord0043','gn013',5);
INSERT INTO GnomePurchase VALUES('go0076','ord0044','gn016',3);
INSERT INTO GnomePurchase VALUES('go0077','ord0044','gn018',2);
INSERT INTO GnomePurchase VALUES('go0078','ord0044','gn022',2);
INSERT INTO GnomePurchase VALUES('go0079','ord0044','gn023',4);
INSERT INTO GnomePurchase VALUES('go0080','ord0045','gn001',3);
INSERT INTO GnomePurchase VALUES('go0081','ord0046','gn005',5);
INSERT INTO GnomePurchase VALUES('go0082','ord0047','gn009',2);
INSERT INTO GnomePurchase VALUES('go0083','ord0048','gn011',5);
INSERT INTO GnomePurchase VALUES('go0084','ord0049','gn014',3);
INSERT INTO GnomePurchase VALUES('go0085','ord0050','gn016',1);
INSERT INTO GnomePurchase VALUES('go0086','ord0051','gn020',2);
INSERT INTO GnomePurchase VALUES('go0087','ord0051','gn022',4);
INSERT INTO GnomePurchase VALUES('go0088','ord0051','gn024',3);
INSERT INTO GnomePurchase VALUES('go0089','ord0052','gn027',4);
INSERT INTO GnomePurchase VALUES('go0090','ord0053','gn002',5);
INSERT INTO GnomePurchase VALUES('go0091','ord0054','gn004',4);
INSERT INTO GnomePurchase VALUES('go0092','ord0055','gn007',1);
INSERT INTO GnomePurchase VALUES('go0093','ord0056','gn009',5);
INSERT INTO GnomePurchase VALUES('go0094','ord0057','gn011',5);
INSERT INTO GnomePurchase VALUES('go0095','ord0057','gn013',1);
INSERT INTO GnomePurchase VALUES('go0096','ord0057','gn015',2);
INSERT INTO GnomePurchase VALUES('go0097','ord0058','gn018',4);
INSERT INTO GnomePurchase VALUES('go0098','ord0059','gn019',3);
INSERT INTO GnomePurchase VALUES('go0099','ord0060','gn022',5);
INSERT INTO GnomePurchase VALUES('go0100','ord0061','gn025',5);
INSERT INTO GnomePurchase VALUES('go0101','ord0062','gn026',5);
INSERT INTO GnomePurchase VALUES('go0102','ord0063','gn029',2);
INSERT INTO GnomePurchase VALUES('go0103','ord0064','gn031',4);
INSERT INTO GnomePurchase VALUES('go0104','ord0064','gn033',3);
INSERT INTO GnomePurchase VALUES('go0105','ord0064','gn035',5);
INSERT INTO GnomePurchase VALUES('go0106','ord0064','gn024',5);
INSERT INTO GnomePurchase VALUES('go0107','ord0064','gn026',4);
INSERT INTO GnomePurchase VALUES('go0108','ord0064','gn028',4);
INSERT INTO GnomePurchase VALUES('go0109','ord0064','gn029',5);
INSERT INTO GnomePurchase VALUES('go0110','ord0065','gn031',1);
INSERT INTO GnomePurchase VALUES('go0111','ord0066','gn032',5);
INSERT INTO GnomePurchase VALUES('go0112','ord0067','gn033',2);
INSERT INTO GnomePurchase VALUES('go0113','ord0068','gn034',5);
INSERT INTO GnomePurchase VALUES('go0114','ord0069','gn035',3);
INSERT INTO GnomePurchase VALUES('go0115','ord0070','gn003',1);
INSERT INTO GnomePurchase VALUES('go0116','ord0071','gn004',5);
INSERT INTO GnomePurchase VALUES('go0117','ord0072','gn007',3);
INSERT INTO GnomePurchase VALUES('go0118','ord0073','gn009',2);
INSERT INTO GnomePurchase VALUES('go0119','ord0074','gn010',4);
INSERT INTO GnomePurchase VALUES('go0120','ord0075','gn012',2);
INSERT INTO GnomePurchase VALUES('go0121','ord0076','gn013',2);
INSERT INTO GnomePurchase VALUES('go0122','ord0077','gn014',1);
INSERT INTO GnomePurchase VALUES('go0123','ord0078','gn015',2);
INSERT INTO GnomePurchase VALUES('go0124','ord0079','gn001',4);
INSERT INTO GnomePurchase VALUES('go0125','ord0080','gn002',3);
INSERT INTO GnomePurchase VALUES('go0126','ord0080','gn006',4);
INSERT INTO GnomePurchase VALUES('go0127','ord0081','gn009',5);
INSERT INTO GnomePurchase VALUES('go0128','ord0081','gn011',2);
INSERT INTO GnomePurchase VALUES('go0129','ord0082','gn014',3);
INSERT INTO GnomePurchase VALUES('go0130','ord0082','gn017',4);
INSERT INTO GnomePurchase VALUES('go0131','ord0082','gn021',4);
INSERT INTO GnomePurchase VALUES('go0132','ord0083','gn022',3);
INSERT INTO GnomePurchase VALUES('go0133','ord0084','gn024',3);
INSERT INTO GnomePurchase VALUES('go0134','ord0085','gn025',1);
INSERT INTO GnomePurchase VALUES('go0135','ord0086','gn027',2);
INSERT INTO GnomePurchase VALUES('go0136','ord0086','gn029',1);
INSERT INTO GnomePurchase VALUES('go0137','ord0086','gn031',5);
INSERT INTO GnomePurchase VALUES('go0138','ord0087','gn033',3);
INSERT INTO GnomePurchase VALUES('go0139','ord0087','gn034',4);
INSERT INTO GnomePurchase VALUES('go0140','ord0088','gn035',2);
INSERT INTO GnomePurchase VALUES('go0141','ord0089','gn001',1);
INSERT INTO GnomePurchase VALUES('go0142','ord0090','gn002',1);
INSERT INTO GnomePurchase VALUES('go0143','ord0091','gn006',3);
INSERT INTO GnomePurchase VALUES('go0144','ord0092','gn009',3);
INSERT INTO GnomePurchase VALUES('go0145','ord0093','gn011',1);
INSERT INTO GnomePurchase VALUES('go0146','ord0094','gn013',2);
INSERT INTO GnomePurchase VALUES('go0147','ord0095','gn014',3);
INSERT INTO GnomePurchase VALUES('go0148','ord0096','gn017',1);
INSERT INTO GnomePurchase VALUES('go0149','ord0096','gn019',1);
INSERT INTO GnomePurchase VALUES('go0150','ord0096','gn021',3);
INSERT INTO GnomePurchase VALUES('go0151','ord0096','gn023',2);
INSERT INTO GnomePurchase VALUES('go0152','ord0097','gn025',4);
INSERT INTO GnomePurchase VALUES('go0153','ord0097','gn027',2);
INSERT INTO GnomePurchase VALUES('go0154','ord0098','gn028',5);
INSERT INTO GnomePurchase VALUES('go0155','ord0098','gn030',5);
INSERT INTO GnomePurchase VALUES('go0156','ord0099','gn032',3);
INSERT INTO GnomePurchase VALUES('go0157','ord0099','gn033',2);
INSERT INTO GnomePurchase VALUES('go0158','ord0099','gn008',4);
INSERT INTO GnomePurchase VALUES('go0159','ord0099','gn011',3);
INSERT INTO GnomePurchase VALUES('go0160','ord0099','gn014',5);
INSERT INTO GnomePurchase VALUES('go0161','ord0100','gn016',5);
