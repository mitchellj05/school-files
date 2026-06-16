.read setup.sql

UPDATE Staff
SET address = '99 Willow Way, Falkirk, FA87 6FE'
WHERE staffID = 'DS021';

SELECT *
FROM Staff
WHERE address = '99 Willow Way, Falkirk, FA87 6FE';
