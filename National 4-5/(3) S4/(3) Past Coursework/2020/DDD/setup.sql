-- print output in columns
.mode column

-- enforce foreign key constraints
PRAGMA foreign_keys = True;

-- create tables
CREATE TABLE Customer(
  customerID  INTEGER      NOT NULL,
  forename    VARCHAR(40)  NOT NULL,
  surname     VARCHAR(50)  NOT NULL,
  address     VARCHAR(100),
  telephoneNo VARCHAR(11),

  PRIMARY KEY (customerID)
);

CREATE TABLE FlowerOrder(
  orderID    VARCHAR(10)  NOT NULL,
  dateDue    DATE         NOT NULL,
  price      FLOAT        NOT NULL,
  flowerType VARCHAR(8)   NOT NULL,
  bunchSize  VARCHAR(6)   NOT NULL,
  chocolates BOOLEAN      NOT NULL,
  message    VARCHAR(200),
  customerID INTEGER      NOT NULL,

  PRIMARY KEY (orderID),
  FOREIGN KEY (customerID) REFERENCES Customer(customerID),

  CHECK (flowerType IN ('rose', 'lily', 'tulip', 'daffodil')),
  CHECK (bunchSize IN ('small', 'medium','large'))
);

INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (0,'Michael','Daly','12 Dover Heights Dunfermline KY7 8HQ','01383425584');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (7,'Nicola','Modha',NULL,'01318845767');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (76,'Louise','Nowak','20 High Street Glasgow G50 9BH','01412241111');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (88,'Rudo','Kerr','16 Hay Drive Birmingham B1 1AA','01215654588');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (130,'Anja','Greally','10b Chichester Street Aberdeen AB10 7TH','01224715232');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (152,'Julianna','Hyper','126 George Street Manchester M18 7AP','01615327852');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (164,'Wendy','Russell','72 Sutherland Way Belfast BT1 1BT','02890247112');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (228,'Steven','Johnstone','24 Dundas Street Lerwick ZE2 8QP','01592564585');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (233,'Ali','Abbas',NULL,'01319863748');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (240,'Lesley','Wallace','144 Western Way Liverpool L1 0BG','01515232122');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (253,'Alison','Wanecki','2/2 Penley Court Kilmarnock KA1 1AL','07992102938');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (304,'Tisa','Sullivan','11 Edinburgh Road Edinburgh EH2 9XC','01315648786');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (316,'Ian','Hunter',NULL,'07974367483');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (329,'Sosanna','Cattanach-Chell','3/2 Collingwood Place Edinburgh EH1 5ND','01316878887');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (376,'Ewan','Baqri',NULL,'07563748757');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (380,'John','Smith','12 Perth Street London SE1 2RE','02071231234');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (392,'Caitlin','Elliott','12/6 Salisbury Heights Edinburgh EH2 8BC','07654029336');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (456,'Susan','Brown','7 McLeod Street Glasgow G44 2SD','01412251111');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (461,'Greg','Anderson','64 Bleeker Street Inverness IV1 8HN','01224369456');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (468,'Hasan','Watson','88 Sighthill Drive Glasgow G42 9RS','01414563211');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (499,'Linda','Cessford','1 Balfe Street Inverness IV1 9KA','01224369432');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (532,'Grant','Pettigrew',NULL,'07348598675');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (544,'Jacek','Hussain','16/5 Argyle Place Motherwell ML1 2BX','01698332552');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (608,'Teressa','Reid','17 St. John Street Prestwick KA9 1ZA','01292563523');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (622,'Tahir','Valette','45 Cheetham Hill Road Edinburgh EH3 9UJ','01313332122');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (651,'Ayesha','Lewoski','19/4 Plender Street Falkirk FK2 9LQ','01324854455');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (684,'Jim','Jones','8 Halo Avenue Edinburgh EH4 8MN','01312646587');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (689,'Mirka','Kowalski','91 Fillian Way Glasgow G30 2KM','01413257777');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (745,'Stephen','McIntyre','18 Connaught Close Forfar DD8 2SK','01307123432');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (868,'Pamela','Mckay',NULL,'01318243522');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (917,'Kim','Grozdanic','2 Napier Way Cambridge CB1 2LS','01223663311');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (973,'Cerdiwen','Singarajah','26 Skelladale Stirling FK7 4EF','07009637449');
INSERT INTO Customer(customerID,forename,surname,address,telephoneNo) VALUES (991,'Martin','Metcalf','99 Mosley Street Leeds LS3 3EX','01135235663');

INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('ALG3592','24/03/2019',25,'tulip','large','FALSE',NULL,622);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('ARN30784','29/03/2019',39,'lily','large','FALSE',NULL,651);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('BCN1924','27/03/2019',15,'daffodil','large','FALSE',NULL,233);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('BFS7696','27/03/2019',9,'daffodil','medium','FALSE',NULL,461);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('BHX492544','01/04/2019',22.5,'rose','small','TRUE',NULL,240);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('BUD15136','30/03/2019',14,'lily','small','FALSE',NULL,544);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('CHQ3848','28/03/2019',34,'rose','medium','FALSE','Thanks for everything',392);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('DEI246272','30/03/2019',27,'lily','medium','FALSE',NULL,228);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('EDI15392','27/03/2019',20.5,'tulip','medium','TRUE',NULL,130);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('FCO61312','24/03/2019',37.5,'rose','medium','TRUE','This is your special day',164);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('FRA7696','28/03/2019',30.5,'lily','medium','TRUE',NULL,304);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('GAL14102','27/03/2019',19,'rose','small','FALSE','Congratulations - you did it!',329);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('HAT1329','28/03/2019',13.5,'tulip','small','TRUE',NULL,7);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('HEL1970176','25/03/2019',50,'rose','large','TRUE',NULL,745);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('HLR123136','29/03/2019',42.5,'lily','large','TRUE',NULL,991);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('IBZ985088','30/03/2019',17,'tulip','medium','FALSE',NULL,316);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('LAS70622','01/04/2019',27,'lily','medium','FALSE',NULL,499);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('LAX962343','23/03/2019',39,'lily','large','FALSE',NULL,456);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('LPL127943','26/03/2019',5,'daffodil','small','FALSE',NULL,532);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('LPL30528','31/03/2019',46.5,'rose','large','FALSE',NULL,608);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('LRH492544','02/04/2019',8.5,'daffodil','small','TRUE','Good luck',868);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('LSI7440','30/03/2019',50,'rose','large','TRUE',NULL,684);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('MAN61568','26/03/2019',22.5,'rose','small','TRUE',NULL,689);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('MMX75121','30/03/2019',37.5,'rose','medium','TRUE',NULL,917);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('MNA1902','03/04/2019',20.5,'tulip','medium','TRUE','In celebration of your birthday',973);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('MUC481','29/03/2019',19,'rose','small','FALSE',NULL,76);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('NAP222019','27/03/2019',50,'rose','large','TRUE','Hope your new house becomes a home',253);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('NTS192422','25/03/2019',17.5,'daffodil','large','TRUE',NULL,380);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('SAW239','01/04/2019',10,'tulip','small','FALSE',NULL,376);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('SNS123136','23/03/2019',34,'rose','medium','FALSE',NULL,468);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('SVQ1668','01/04/2019',22.5,'rose','small','TRUE',NULL,152);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('VNO158','05/04/2019',42.5,'lily','large','TRUE',NULL,0);
INSERT INTO FlowerOrder(orderID,dateDue,price,flowerType,bunchSize,chocolates,message,customerID) VALUES ('WLW30784','29/03/2019',34,'rose','medium','FALSE',NULL,88);
