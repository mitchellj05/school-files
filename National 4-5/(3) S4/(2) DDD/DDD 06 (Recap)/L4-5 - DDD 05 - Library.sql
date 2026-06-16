.read setup.sql

.print
.print Question 1
.print

SELECT *
FROM authors;

SELECT *
FROM books;

.print
.print Question 2
.print

SELECT forename, surname
FROM authors
WHERE nationality = 'American';

.print
.print Question 3
.print

SELECT title
FROM books
WHERE genre = 'Fiction';

.print
.print Question 4
.print

SELECT title
FROM books
WHERE genre = 'Fiction'
AND available = TRUE;

.print
.print Question 5
.print

SELECT forename, surname
FROM authors
WHERE date_of_birth > '1950-01-01'
ORDER BY date_of_birth desc;

.print
.print Question 6
.print

UPDATE books
SET publisher = 'Dolphin'
WHERE publisher = 'Puffin';

SELECT title, publisher
FROM books
WHERE publisher = 'Dolphin';

.print
.print Question 7
.print

DELETE FROM books
WHERE type = 'Adult'
AND publisher = 'Penguin';

SELECT type, title, publisher
FROM books
WHERE publisher = 'Penguin';


--End with a blank line
.print
