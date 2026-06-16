-- enable foreign key support
PRAGMA foreign_keys = ON;

-- print pretty headers and columns
.header on
.mode column

-- create tables

CREATE TABLE Voucher(
voucherID varchar(255) NOT NULL,
voucherName varchar(255) NOT NULL,
category varchar(255) NOT NULL,
price£ float(6,2) NOT NULL,
expiryDate date NOT NULL,
supplierCode varchar(255) NOT NULL,
quantityAvailable int NOT NULL
);

CREATE TABLE Supplier(
supplierCode varchar(255) NOT NULL,
supplierName varchar(255) NOT NULL,
email varchar(255) NOT NULL
);

CREATE TABLE CustomerOrder(
orderID varchar(255) NOT NULL,
custID int NOT NULL,
voucherID varchar(255) NOT NULL,
quantityPurchased int NOT NULL,
dateOrdered date NOT NULL
);

CREATE TABLE Customer(
custID int NOT NULL,
firstName varchar(255) NOT NULL,
surname varchar(255) NOT NULL,
email varchar(255) NOT NULL
);

-- add data

INSERT INTO Voucher VALUES('V890','Escape room for 10','Adventure',86.00,'2022-11-30','S999',100);
INSERT INTO Voucher VALUES('V369','Experience an escape room for 2','Adventure',20.00,'2022-11-30','S999',100);
INSERT INTO Voucher VALUES('V368','Experience an escape room for 4','Adventure',32.00,'2022-11-30','S999',25);
INSERT INTO Voucher VALUES('V862','Afternoon tea and fizz for 2','Food',25.00,'2022-09-30','S998',50);
INSERT INTO Voucher VALUES('V555','Skate park entrance','Adventure',18.00,'2022-12-26','S896',60);
INSERT INTO Voucher VALUES('V547','Scooter hire and lesson','Adventure',30.00,'2023-01-01','S896',45);
INSERT INTO Voucher VALUES('V543','Skate park and lunch','Adventure',25.00,'2022-12-31','S896',200);
INSERT INTO Voucher VALUES('V234','Steak and side for two','Food',24.00,'2022-11-01','S878',75);
INSERT INTO Voucher VALUES('V554','Pizza for two','Food',12.00,'2022-10-13','S821',50);
INSERT INTO Voucher VALUES('V235','Pizzas and sides for two','Food',15.00,'2022-10-13','S821',50);
INSERT INTO Voucher VALUES('V811','Gym session for one','Adventure',3.00,'2022-12-25','S757',40);
INSERT INTO Voucher VALUES('V582','Gym pass 1 month','Adventure',15.00,'2022-12-25','S757',40);
INSERT INTO Voucher VALUES('V340','Gym pass for one week','Adventure',5.00,'2022-12-25','S757',40);
INSERT INTO Voucher VALUES('V888','Gym pass for 2','Adventure',6.00,'2022-12-31','S756',100);
INSERT INTO Voucher VALUES('V445','Massage escape room','Beauty',20.00,'2022-11-23','S721',150);
INSERT INTO Voucher VALUES('V423','Manicure and facial','Beauty',15.00,'2022-11-23','S721',50);
INSERT INTO Voucher VALUES('V876','Double escape room adventure','Adventure',40.00,'2022-10-27','S667',70);
INSERT INTO Voucher VALUES('V852','Softplay and cake','Family',6.00,'2022-10-31','S568',25);
INSERT INTO Voucher VALUES('V878','Skate park and lunch','Adventure',28.00,'2021-02-28','S455',60);
INSERT INTO Voucher VALUES('V610','Segway special - escape to the country','Family',20.00,'2022-10-25','S443',200);
INSERT INTO Voucher VALUES('V345','Cut & Colour','Beauty',22.00,'2022-12-01','S424',20);
INSERT INTO Voucher VALUES('V347','Massage and facial','Beauty',14.00,'2022-12-22','S424',30);
INSERT INTO Voucher VALUES('V924','Bowling and burgers','Family',25.00,'2022-10-16','S333',50);
INSERT INTO Voucher VALUES('V898','Trampoline','Family',4.00,'2022-10-23','S333',60);
INSERT INTO Voucher VALUES('V654','Softplay and lunch for 2','Family',12.00,'2022-10-31','S333',45);
INSERT INTO Voucher VALUES('V232','Burgers 2 for £20','Food',20.00,'2022-12-01','S290',100);
INSERT INTO Voucher VALUES('V482','Teddy Bears'' Picnic','Family',10.00,'2021-12-31','S1326',30);

  

INSERT INTO Supplier VALUES('S1326','Cuddle World','cuddleworld@uplook.co.uk');
INSERT INTO Supplier VALUES('S290','BurgersRus','burger@burgersrus.com');
INSERT INTO Supplier VALUES('S333','WonderPlay','info@wonderplay.co.uk');
INSERT INTO Supplier VALUES('S424','BeautyBomb','bb@beautybomb.com');
INSERT INTO Supplier VALUES('S443','Super Segways','contact@segwaayexperience.co.uk');
INSERT INTO Supplier VALUES('S455','Skaterz','bookings@skaterz.co.uk');
INSERT INTO Supplier VALUES('S568','Family Fun Club','info@famfun.co.uk');
INSERT INTO Supplier VALUES('S667','Escapers','escapers@escapers.com');
INSERT INTO Supplier VALUES('S721','SpaRoom','thespa@thesparoom.co.uk');
INSERT INTO Supplier VALUES('S756','JungleGym','exercise@thejunglegym.com');
INSERT INTO Supplier VALUES('S757','Gymtastic','getfit@thegym.co.uk');
INSERT INTO Supplier VALUES('S821','Speedy Pizza','info@speedypizza.org.uk');
INSERT INTO Supplier VALUES('S878','The Steak House','reservations@TSH.com');
INSERT INTO Supplier VALUES('S896','SkatePark','skaters@skatepark.com');
INSERT INTO Supplier VALUES('S998','Le Ritz Hotel','bookings@LeRitz.co.uk');
INSERT INTO Supplier VALUES('S999','Escape Rooms Ltd','danger@escaperoom.com');

INSERT INTO Customer VALUES(2255,'Julie','Wilson','julieW45@gmail.com');
INSERT INTO Customer VALUES(2679,'Innes','McCallum','im@rugby.com');
INSERT INTO Customer VALUES(2987,'Aziah','Moqsud','am1981@girlpower.com');
INSERT INTO Customer VALUES(3123,'Oliver','Alexander','skaterboi@skating.co.uk');
INSERT INTO Customer VALUES(4567,'Derrick','Paterson','grumpy@yahoo.com');
INSERT INTO Customer VALUES(4569,'Jennifer','Wilson','mrswilson81@hotmail.com');
INSERT INTO Customer VALUES(5896,'Pam','Jones','jonsey67@google.com');
INSERT INTO Customer VALUES(6357,'Uichin','Chan','uchan2@webmail.co.uk');
INSERT INTO Customer VALUES(7606,'Lloyd','Oteniya','thedoc89@blueyonder.co.uk');
INSERT INTO Customer VALUES(7894,'Becky','Bennett','rbennett99@webmail.co.uk');
INSERT INTO Customer VALUES(8764,'Imran','Khan','immyk9@hotmail.com');
INSERT INTO Customer VALUES(8989,'Lottie','Rose','puppylove5@gmail.com');
INSERT INTO Customer VALUES(9129,'Bailey','Donald','bailey10@bluesky.com');
INSERT INTO Customer VALUES(9635,'Chukka','Radebe','musicman@music.com');
INSERT INTO Customer VALUES(9966,'Neville','Wilson','nevs@purfect.com');
INSERT INTO Customer VALUES(9988,'Graham','Brown','GBroon101@hotmail.com');


INSERT INTO CustomerOrder VALUES('X1256',5896,'V232',2,'2020-11-19');
INSERT INTO CustomerOrder VALUES('X8965',7606,'V232',4,'2021-01-15');
INSERT INTO CustomerOrder VALUES('X2356',7606,'V234',1,'2021-02-13');
INSERT INTO CustomerOrder VALUES('X8898',6357,'V235',1,'2021-02-03');
INSERT INTO CustomerOrder VALUES('X2459',8764,'V235',1,'2021-01-03');
INSERT INTO CustomerOrder VALUES('X7779',9966,'V235',1,'2021-01-19');
INSERT INTO CustomerOrder VALUES('X1598',6357,'V340',1,'2021-02-18');
INSERT INTO CustomerOrder VALUES('X1478',7894,'V345',1,'2021-02-14');
INSERT INTO CustomerOrder VALUES('X2369',2255,'V347',2,'2021-02-01');
INSERT INTO CustomerOrder VALUES('X4569',8989,'V347',3,'2020-11-30');
INSERT INTO CustomerOrder VALUES('X3214',9966,'V368',1,'2021-02-22');
INSERT INTO CustomerOrder VALUES('X6981',9129,'V369',4,'2020-12-17');
INSERT INTO CustomerOrder VALUES('X0369',9635,'V423',1,'2021-03-13');
INSERT INTO CustomerOrder VALUES('X9654',2679,'V445',1,'2021-01-22');
INSERT INTO CustomerOrder VALUES('X5012',7606,'V445',2,'2021-01-25');
INSERT INTO CustomerOrder VALUES('X7964',9988,'V445',1,'2021-02-18');
INSERT INTO CustomerOrder VALUES('X6655',9988,'V482',2,'2020-10-31');
INSERT INTO CustomerOrder VALUES('X3643',2987,'V482',3,'2020-10-31');
INSERT INTO CustomerOrder VALUES('X8531',7894,'V482',2,'2020-12-10');
INSERT INTO CustomerOrder VALUES('X6968',4567,'V482',1,'2021-02-27');
INSERT INTO CustomerOrder VALUES('X7563',3123,'V543',1,'2021-02-16');
INSERT INTO CustomerOrder VALUES('X9461',5896,'V543',1,'2021-02-01');
INSERT INTO CustomerOrder VALUES('X8642',3123,'V547',8,'2020-12-03');
INSERT INTO CustomerOrder VALUES('X5555',8989,'V554',2,'2021-01-01');
INSERT INTO CustomerOrder VALUES('X7915',4569,'V555',3,'2020-12-12');
INSERT INTO CustomerOrder VALUES('X8646',6357,'V582',3,'2020-12-18');
INSERT INTO CustomerOrder VALUES('X2323',4567,'V610',1,'2021-01-28');
INSERT INTO CustomerOrder VALUES('X5959',8764,'V610',1,'2021-02-28');
INSERT INTO CustomerOrder VALUES('X7534',2255,'V654',2,'2021-03-23');
INSERT INTO CustomerOrder VALUES('X9917',4567,'V654',3,'2021-02-27');
INSERT INTO CustomerOrder VALUES('X2364',6357,'V811',1,'2020-12-29');
INSERT INTO CustomerOrder VALUES('X3333',7606,'V852',2,'2021-02-01');
INSERT INTO CustomerOrder VALUES('X2378',2679,'V862',4,'2020-11-09');
INSERT INTO CustomerOrder VALUES('X8291',4567,'V862',1,'2021-02-13');
INSERT INTO CustomerOrder VALUES('X5665',4569,'V878',4878,'2020-12-11');
INSERT INTO CustomerOrder VALUES('X5648',8764,'V888',2,'2020-12-19');
INSERT INTO CustomerOrder VALUES('X9643',2987,'V890',2,'2021-01-21');
INSERT INTO CustomerOrder VALUES('X1534',9635,'V890',1,'2020-12-24');
INSERT INTO CustomerOrder VALUES('X9731',7894,'V890',4,'2020-12-22');
INSERT INTO CustomerOrder VALUES('X5646',3123,'V898',2,'2021-01-29');
INSERT INTO CustomerOrder VALUES('X7575',9129,'V898',2,'2021-01-26');
INSERT INTO CustomerOrder VALUES('X7557',5896,'V898',1,'2020-12-18');
INSERT INTO CustomerOrder VALUES('X5697',7894,'V924',1,'2021-01-31');
INSERT INTO CustomerOrder VALUES('X8111',8989,'V924',1,'2021-02-07');

