.read setup.sql

CREATE TABLE Amplifier(
  serialNumber    VARCHAR(10)   NOT NULL,
  dateBuilt       DATE          NOT NULL,
  timeCompleted   TIME          NOT NULL,
  model           VARCHAR(7)    NOT NULL,
  testPassed      BOOLEAN       NOT NULL,
  employeeNumber  INTEGER       NOT NULL,

  PRIMARY KEY (serialNumber),
  FOREIGN KEY (employeeNumber) REFERENCES Employee(employeeNumber),

  CHECK (LENGTH(serialNumber) = 10)
  CHECK (model IN ('Jazz8', 'Rock100', 'Blues55'))
);

UPDATE Employee
SET employeeNumber = '1599', firstName = 'Jeremy', surname = 'May', address = '67 Red Lane', drivingLicence = TRUE, contactNumber = '07923782534';

SELECT *
FROM Employee
WHERE employeeNumber = '1599';

