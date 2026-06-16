.read setup.sql

.print
.print Question 1
.print

UPDATE staff
SET department = 'management'
WHERE email = 'eliv123@email.net';

SELECT *
FROM staff
WHERE email = 'eliv123@email.net';

.print
.print Question 2
.print

SELECT forename, surname, description
FROM Staff, Problem
WHERE dateRaised = '2022-07-07'
AND staff.email = problem.email
ORDER BY rating asc;