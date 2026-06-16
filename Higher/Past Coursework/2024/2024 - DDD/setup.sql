-- print output in columns
.mode column

-- enforce foreign key constraints
PRAGMA foreign_keys = ON;


CREATE TABLE Event(
    eventID   VARCHAR(255) NOT NULL,
    eventDate DATE         NOT NULL,
    city      VARCHAR(255) NOT NULL,
    venue     VARCHAR(255) NOT NULL,

    PRIMARY KEY (eventID)
);


CREATE TABLE Race(
    raceNumber   INT          NOT NULL,
    raceCategory VARCHAR(255) NOT NULL,
    stroke       VARCHAR(255) NOT NULL,
    distance     INT          NOT NULL,
    eventID      VARCHAR(255) NOT NULL,

    PRIMARY KEY (raceNumber),
    FOREIGN KEY (eventID) REFERENCES Event(eventID)
);


CREATE TABLE Team(
    teamRef        VARCHAR(255) NOT NULL,
    teamName       VARCHAR(255) NOT NULL,
    headCoach      VARCHAR(255) NOT NULL,
    assistantCoach VARCHAR(255) NOT NULL,

    PRIMARY KEY (teamRef)
);


CREATE TABLE Swimmer(
    swimmerID    VARCHAR(255) NOT NULL,
    initial      VARCHAR(255) NOT NULL,
    surname      VARCHAR(255) NOT NULL,
    swimCategory VARCHAR(255) NOT NULL,
    teamRef      VARCHAR(255) NOT NULL,

    PRIMARY KEY (swimmerID),
    FOREIGN KEY (teamRef) REFERENCES Team(teamRef)
);


CREATE TABLE Result(
    raceNumber INT NOT      NULL,
    position   INT NOT      NULL,
    lane       INT NOT      NULL,
    swimmerID  VARCHAR(255) NOT NULL,
    raceTime   VARCHAR(255) NOT NULL,

    PRIMARY KEY (raceNumber, swimmerID),
    FOREIGN KEY (raceNumber) REFERENCES Race(raceNumber),
    FOREIGN KEY (swimmerID) REFERENCES Swimmer(swimmerID)
);


INSERT INTO Event VALUES('Event 1','2024-01-06','Glasgow','Tollcross International Swimming Centre');
INSERT INTO Event VALUES('Event 2','2024-01-13','Leeds','John Charles Centre for Sport');
INSERT INTO Event VALUES('Event 3','2024-01-20','Bangor','Bangor Aurora Aquatic and Leisure Complex');
INSERT INTO Event VALUES('Event 4','2024-01-27','Cardiff','Cardiff International Pool');


INSERT INTO Race VALUES(1,'Intermediate','Backstroke',100,'Event 1');
INSERT INTO Race VALUES(2,'Advanced','Breaststroke',200,'Event 1');
INSERT INTO Race VALUES(3,'Intermediate','Butterfly',100,'Event 1');
INSERT INTO Race VALUES(4,'Advanced','Freestyle',50,'Event 1');
INSERT INTO Race VALUES(5,'Intermediate','Freestyle',200,'Event 1');
INSERT INTO Race VALUES(6,'Advanced','Backstroke',100,'Event 2');
INSERT INTO Race VALUES(7,'Intermediate','Breaststroke',200,'Event 2');
INSERT INTO Race VALUES(8,'Advanced','Butterfly',200,'Event 2');
INSERT INTO Race VALUES(9,'Intermediate','Freestyle',100,'Event 2');
INSERT INTO Race VALUES(10,'Advanced','Freestyle',400,'Event 2');
INSERT INTO Race VALUES(11,'Intermediate','Backstroke',200,'Event 3');
INSERT INTO Race VALUES(12,'Advanced','Breaststroke',100,'Event 3');
INSERT INTO Race VALUES(13,'Intermediate','Butterfly',200,'Event 3');
INSERT INTO Race VALUES(14,'Advanced','Freestyle',100,'Event 3');
INSERT INTO Race VALUES(15,'Intermediate','Freestyle',400,'Event 3');
INSERT INTO Race VALUES(16,'Advanced','Backstroke',200,'Event 4');
INSERT INTO Race VALUES(17,'Intermediate','Breaststroke',100,'Event 4');
INSERT INTO Race VALUES(18,'Advanced','Butterfly',100,'Event 4');
INSERT INTO Race VALUES(19,'Intermediate','Freestyle',50,'Event 4');
INSERT INTO Race VALUES(20,'Advanced','Freestyle',200,'Event 4');


INSERT INTO Team VALUES('ENG','England','Jordan Walker','Francis Carroll');
INSERT INTO Team VALUES('NIR','Northern Ireland','Alex McCarthy','Adrian Thompson');
INSERT INTO Team VALUES('SCO','Scotland','Devon Jackson','Blake Shearer');
INSERT INTO Team VALUES('WAL','Wales','Jaden Wilson','Benny Fitzgerald');


INSERT INTO Swimmer VALUES('ENG-A1','F','Adams','Advanced','ENG');
INSERT INTO Swimmer VALUES('ENG-A2','G','King','Advanced','ENG');
INSERT INTO Swimmer VALUES('ENG-A3','L','Slorance','Advanced','ENG');
INSERT INTO Swimmer VALUES('ENG-A4','J','Smith','Advanced','ENG');
INSERT INTO Swimmer VALUES('ENG-I1','A','Jackson','Intermediate','ENG');
INSERT INTO Swimmer VALUES('ENG-I2','D','Chaudhry','Intermediate','ENG');
INSERT INTO Swimmer VALUES('ENG-I3','T','Rivani','Intermediate','ENG');
INSERT INTO Swimmer VALUES('ENG-I4','M','Abbott','Intermediate','ENG');
INSERT INTO Swimmer VALUES('NIR-A1','D','Brown','Advanced','NIR');
INSERT INTO Swimmer VALUES('NIR-A2','L','Kelly','Advanced','NIR');
INSERT INTO Swimmer VALUES('NIR-A3','C','Hicks','Advanced','NIR');
INSERT INTO Swimmer VALUES('NIR-A4','R','Hudson','Advanced','NIR');
INSERT INTO Swimmer VALUES('NIR-I1','S','Johnston','Intermediate','NIR');
INSERT INTO Swimmer VALUES('NIR-I2','M','McGowan','Intermediate','NIR');
INSERT INTO Swimmer VALUES('NIR-I3','F','Miller','Intermediate','NIR');
INSERT INTO Swimmer VALUES('NIR-I4','B','Murphy','Intermediate','NIR');
INSERT INTO Swimmer VALUES('SCO-A1','D','Ballantyne','Advanced','SCO');
INSERT INTO Swimmer VALUES('SCO-A2','L','Bishop','Advanced','SCO');
INSERT INTO Swimmer VALUES('SCO-A3','D','Tsang','Advanced','SCO');
INSERT INTO Swimmer VALUES('SCO-A4','V','Rose','Advanced','SCO');
INSERT INTO Swimmer VALUES('SCO-I1','I','Arthur','Intermediate','SCO');
INSERT INTO Swimmer VALUES('SCO-I2','K','Kahn','Intermediate','SCO');
INSERT INTO Swimmer VALUES('SCO-I3','A','McDonald','Intermediate','SCO');
INSERT INTO Swimmer VALUES('SCO-I4','S','Anderson','Intermediate','SCO');
INSERT INTO Swimmer VALUES('WAL-A1','S','Adams','Advanced','WAL');
INSERT INTO Swimmer VALUES('WAL-A2','C','Jones','Advanced','WAL');
INSERT INTO Swimmer VALUES('WAL-A3','W','Hudson','Advanced','WAL');
INSERT INTO Swimmer VALUES('WAL-A4','E','Shearer','Advanced','WAL');
INSERT INTO Swimmer VALUES('WAL-I1','M','Davis','Intermediate','WAL');
INSERT INTO Swimmer VALUES('WAL-I2','E','Jones','Intermediate','WAL');
INSERT INTO Swimmer VALUES('WAL-I3','R','McGregor','Intermediate','WAL');
INSERT INTO Swimmer VALUES('WAL-I4','E','Ripley','Intermediate','WAL');


INSERT INTO Result VALUES(1,3,6,'ENG-I1','1:02.46');
INSERT INTO Result VALUES(1,7,1,'ENG-I3','1:03.31');
INSERT INTO Result VALUES(1,2,4,'NIR-I1','1:02.45');
INSERT INTO Result VALUES(1,6,3,'NIR-I3','1:02.80');
INSERT INTO Result VALUES(1,1,8,'SCO-A4','1:02.28');
INSERT INTO Result VALUES(1,4,5,'SCO-I2','1:02.51');
INSERT INTO Result VALUES(1,5,2,'WAL-I2','1:02.59');
INSERT INTO Result VALUES(1,8,7,'WAL-I4','1:03.37');
INSERT INTO Result VALUES(2,2,3,'ENG-A2','2:12.17');
INSERT INTO Result VALUES(2,4,6,'ENG-A3','2:16.07');
INSERT INTO Result VALUES(2,1,4,'NIR-A2','2:09.48');
INSERT INTO Result VALUES(2,6,2,'NIR-A3','2:16.90');
INSERT INTO Result VALUES(2,7,8,'SCO-A1','2:16.99');
INSERT INTO Result VALUES(2,3,5,'SCO-I4','2:12.30');
INSERT INTO Result VALUES(2,8,1,'WAL-A2','2:19.32');
INSERT INTO Result VALUES(2,5,7,'WAL-A4','2:16.39');
INSERT INTO Result VALUES(3,4,6,'ENG-I1','0:59.38');
INSERT INTO Result VALUES(3,8,8,'ENG-I4','1:00.75');
INSERT INTO Result VALUES(3,2,5,'NIR-I2','0:59.10');
INSERT INTO Result VALUES(3,3,3,'NIR-I3','0:59.24');
INSERT INTO Result VALUES(3,1,4,'SCO-I1','0:58.43');
INSERT INTO Result VALUES(3,5,1,'SCO-I2','0:59.77');
INSERT INTO Result VALUES(3,7,7,'WAL-I2','1:00.57');
INSERT INTO Result VALUES(3,6,2,'WAL-I3','1:00.25');
INSERT INTO Result VALUES(4,2,4,'ENG-A3','0:21.91');
INSERT INTO Result VALUES(4,4,7,'ENG-A4','0:22.57');
INSERT INTO Result VALUES(4,6,2,'NIR-A1','0:22.65');
INSERT INTO Result VALUES(4,8,8,'NIR-A2','0:23.04');
INSERT INTO Result VALUES(4,7,1,'SCO-A2','0:22.79');
INSERT INTO Result VALUES(4,5,5,'SCO-A3','0:22.58');
INSERT INTO Result VALUES(4,3,3,'WAL-A2','0:22.52');
INSERT INTO Result VALUES(4,1,6,'WAL-A3','0:21.77');
INSERT INTO Result VALUES(5,1,4,'ENG-I2','1:57.61');
INSERT INTO Result VALUES(5,3,6,'ENG-I4','1:57.90');
INSERT INTO Result VALUES(5,5,5,'NIR-I2','1:59.80');
INSERT INTO Result VALUES(5,7,1,'NIR-I4','2:00.10');
INSERT INTO Result VALUES(5,2,7,'SCO-I1','1:57.63');
INSERT INTO Result VALUES(5,8,2,'SCO-I3','2:00.63');
INSERT INTO Result VALUES(5,4,3,'WAL-I1','1:59.44');
INSERT INTO Result VALUES(5,6,8,'WAL-I3','2:00.06');
INSERT INTO Result VALUES(6,1,5,'ENG-A1','0:54.56');
INSERT INTO Result VALUES(6,4,6,'ENG-A2','0:54.85');
INSERT INTO Result VALUES(6,8,7,'NIR-A3','0:55.15');
INSERT INTO Result VALUES(6,6,8,'NIR-A4','0:55.07');
INSERT INTO Result VALUES(6,2,2,'SCO-A3','0:54.58');
INSERT INTO Result VALUES(6,5,3,'SCO-I4','0:55.04');
INSERT INTO Result VALUES(6,7,1,'WAL-A1','0:55.13');
INSERT INTO Result VALUES(6,3,4,'WAL-A3','0:54.75');
INSERT INTO Result VALUES(7,5,1,'ENG-I2','2:32.06');
INSERT INTO Result VALUES(7,3,6,'ENG-I3','2:27.61');
INSERT INTO Result VALUES(7,2,5,'NIR-I1','2:27.34');
INSERT INTO Result VALUES(7,6,2,'NIR-I4','2:32.57');
INSERT INTO Result VALUES(7,1,3,'SCO-A4','2:24.28');
INSERT INTO Result VALUES(7,7,4,'SCO-I3','2:33.51');
INSERT INTO Result VALUES(7,8,8,'WAL-I1','Disqualified');
INSERT INTO Result VALUES(7,4,7,'WAL-I4','2:31.16');
INSERT INTO Result VALUES(8,1,2,'ENG-A1','1:56.31');
INSERT INTO Result VALUES(8,6,3,'ENG-A4','2:00.45');
INSERT INTO Result VALUES(8,7,7,'NIR-A1','2:02.14');
INSERT INTO Result VALUES(8,5,8,'NIR-A4','1:59.98');
INSERT INTO Result VALUES(8,4,1,'SCO-A1','1:58.60');
INSERT INTO Result VALUES(8,8,6,'SCO-A2','2:02.90');
INSERT INTO Result VALUES(8,3,4,'WAL-A1','1:57.77');
INSERT INTO Result VALUES(8,2,5,'WAL-A4','1:57.31');
INSERT INTO Result VALUES(9,6,7,'ENG-I2','0:55.47');
INSERT INTO Result VALUES(9,2,5,'ENG-I4','0:53.92');
INSERT INTO Result VALUES(9,3,3,'NIR-I2','0:55.14');
INSERT INTO Result VALUES(9,7,1,'NIR-I4','0:55.49');
INSERT INTO Result VALUES(9,1,4,'SCO-I1','0:53.45');
INSERT INTO Result VALUES(9,8,6,'SCO-I3','0:55.68');
INSERT INTO Result VALUES(9,5,8,'WAL-I1','0:55.27');
INSERT INTO Result VALUES(9,4,2,'WAL-I3','0:55.23');
INSERT INTO Result VALUES(10,8,2,'ENG-A3','3:53.43');
INSERT INTO Result VALUES(10,2,3,'ENG-A4','3:48.52');
INSERT INTO Result VALUES(10,5,8,'NIR-A1','3:52.54');
INSERT INTO Result VALUES(10,7,7,'NIR-A2','3:53.26');
INSERT INTO Result VALUES(10,3,4,'SCO-A2','3:48.58');
INSERT INTO Result VALUES(10,4,5,'SCO-A3','3:51.86');
INSERT INTO Result VALUES(10,6,6,'WAL-A2','3:52.82');
INSERT INTO Result VALUES(10,1,1,'WAL-A3','3:46.44');
INSERT INTO Result VALUES(11,1,6,'ENG-I1','2:11.25');
INSERT INTO Result VALUES(11,5,5,'ENG-I3','2:13.12');
INSERT INTO Result VALUES(11,6,7,'NIR-I1','2:13.56');
INSERT INTO Result VALUES(11,2,3,'NIR-I3','2:11.84');
INSERT INTO Result VALUES(11,7,2,'SCO-A4','2:15.63');
INSERT INTO Result VALUES(11,3,4,'SCO-I2','2:12.12');
INSERT INTO Result VALUES(11,4,1,'WAL-I2','2:12.34');
INSERT INTO Result VALUES(11,8,8,'WAL-I4','2:16.04');
INSERT INTO Result VALUES(12,6,7,'ENG-A2','1:02.08');
INSERT INTO Result VALUES(12,2,6,'ENG-A3','0:59.17');
INSERT INTO Result VALUES(12,4,3,'NIR-A2','1:00.87');
INSERT INTO Result VALUES(12,3,5,'NIR-A3','1:00.04');
INSERT INTO Result VALUES(12,7,2,'SCO-A1','1:02.09');
INSERT INTO Result VALUES(12,5,1,'SCO-I4','1:01.95');
INSERT INTO Result VALUES(12,1,8,'WAL-A2','0:58.58');
INSERT INTO Result VALUES(12,8,4,'WAL-A4','1:02.11');
INSERT INTO Result VALUES(13,1,4,'ENG-I1','2:08.11');
INSERT INTO Result VALUES(13,5,7,'ENG-I4','2:13.02');
INSERT INTO Result VALUES(13,8,2,'NIR-I2','DNF');
INSERT INTO Result VALUES(13,6,6,'NIR-I3','2:13.21');
INSERT INTO Result VALUES(13,3,3,'SCO-I1','2:10.27');
INSERT INTO Result VALUES(13,4,5,'SCO-I2','2:11.68');
INSERT INTO Result VALUES(13,2,1,'WAL-I2','2:10.02');
INSERT INTO Result VALUES(13,7,8,'WAL-I3','2:14.06');
INSERT INTO Result VALUES(14,5,8,'ENG-A3','0:49.26');
INSERT INTO Result VALUES(14,8,3,'ENG-A4','0:49.51');
INSERT INTO Result VALUES(14,7,2,'NIR-A1','0:49.40');
INSERT INTO Result VALUES(14,1,6,'NIR-A2','0:47.88');
INSERT INTO Result VALUES(14,6,7,'SCO-A2','0:49.30');
INSERT INTO Result VALUES(14,3,4,'SCO-A3','0:48.24');
INSERT INTO Result VALUES(14,2,5,'WAL-A2','0:48.06');
INSERT INTO Result VALUES(14,4,1,'WAL-A3','0:49.20');
INSERT INTO Result VALUES(15,5,1,'ENG-I2','4:14.48');
INSERT INTO Result VALUES(15,1,4,'ENG-I4','4:08.46');
INSERT INTO Result VALUES(15,2,3,'NIR-I2','4:09.04');
INSERT INTO Result VALUES(15,6,8,'NIR-I4','4:16.37');
INSERT INTO Result VALUES(15,3,5,'SCO-I1','4:13.24');
INSERT INTO Result VALUES(15,7,2,'SCO-I3','4:18.39');
INSERT INTO Result VALUES(15,8,7,'WAL-I1','4:19.81');
INSERT INTO Result VALUES(15,4,6,'WAL-I3','4:13.95');
INSERT INTO Result VALUES(16,1,8,'ENG-A1','1:57.57');
INSERT INTO Result VALUES(16,6,1,'ENG-A2','2:01.07');
INSERT INTO Result VALUES(16,8,5,'NIR-A3','2:02.33');
INSERT INTO Result VALUES(16,3,3,'NIR-A4','1:58.80');
INSERT INTO Result VALUES(16,4,7,'SCO-A3','1:59.49');
INSERT INTO Result VALUES(16,7,6,'SCO-I4','2:02.07');
INSERT INTO Result VALUES(16,5,4,'WAL-A1','1:59.79');
INSERT INTO Result VALUES(16,2,2,'WAL-A3','1:57.90');
INSERT INTO Result VALUES(17,5,5,'ENG-I2','1:09.32');
INSERT INTO Result VALUES(17,3,1,'ENG-I3','1:07.63');
INSERT INTO Result VALUES(17,4,6,'NIR-I1','1:08.83');
INSERT INTO Result VALUES(17,8,2,'NIR-I4','1:10.36');
INSERT INTO Result VALUES(17,1,3,'SCO-A4','1:07.52');
INSERT INTO Result VALUES(17,7,7,'SCO-I3','1:10.15');
INSERT INTO Result VALUES(17,6,8,'WAL-I1','1:10.02');
INSERT INTO Result VALUES(17,2,4,'WAL-I4','1:07.60');
INSERT INTO Result VALUES(18,1,2,'ENG-A1','0:51.69');
INSERT INTO Result VALUES(18,5,1,'ENG-A4','0:53.22');
INSERT INTO Result VALUES(18,3,3,'NIR-A1','0:52.46');
INSERT INTO Result VALUES(18,6,8,'NIR-A4','0:53.33');
INSERT INTO Result VALUES(18,7,6,'SCO-A1','0:53.90');
INSERT INTO Result VALUES(18,2,5,'SCO-A2','0:51.93');
INSERT INTO Result VALUES(18,8,4,'WAL-A1','0:53.98');
INSERT INTO Result VALUES(18,4,7,'WAL-A4','0:52.55');
INSERT INTO Result VALUES(19,5,1,'ENG-I2','0:25.61');
INSERT INTO Result VALUES(19,1,4,'ENG-I4','0:24.85');
INSERT INTO Result VALUES(19,8,6,'NIR-I2','Disqualified');
INSERT INTO Result VALUES(19,6,8,'NIR-I4','0:25.73');
INSERT INTO Result VALUES(19,2,5,'SCO-I1','0:25.25');
INSERT INTO Result VALUES(19,3,2,'SCO-I3','0:25.39');
INSERT INTO Result VALUES(19,7,7,'WAL-I1','0:25.74');
INSERT INTO Result VALUES(19,4,3,'WAL-I3','0:25.54');
INSERT INTO Result VALUES(20,8,8,'ENG-A3','1:49.39');
INSERT INTO Result VALUES(20,6,5,'ENG-A4','1:48.52');
INSERT INTO Result VALUES(20,2,4,'NIR-A1','1:45.73');
INSERT INTO Result VALUES(20,1,7,'NIR-A2','1:45.54');
INSERT INTO Result VALUES(20,4,3,'SCO-A2','1:47.66');
INSERT INTO Result VALUES(20,5,2,'SCO-A3','1:47.94');
INSERT INTO Result VALUES(20,3,1,'WAL-A2','1:46.44');
INSERT INTO Result VALUES(20,7,6,'WAL-A3','1:48.67');