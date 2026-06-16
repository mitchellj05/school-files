.read setup.sql
.schema

.print
.print Question 1
.print

INSERT INTO Members(member_id, first_name, last_name, age, email)
VALUES (5, 'Bob', 'Smith', 27, 'bob.smith@wood.org.uk');

SELECT members.member_id, first_name, last_name, age, email
FROM members
WHERE email = 'bob.smith@wood.org.uk';

.print
.print Question 2
.print

INSERT INTO Members(member_id, first_name, last_name, age, email)
VALUES (6, 'Susan', 'Kane', 30, 'susk@yahoo.com');

SELECT members.member_id, first_name, last_name, age, email
FROM members
WHERE email = 'susk@yahoo.com';

.print
.print Question 3
.print

UPDATE members
SET age = 28
WHERE member_id = 1;

SELECT first_name, last_name, age
FROM members
WHERE member_id = 1;

.print
.print Question 4
.print

UPDATE posts
SET number_of_words = 78
WHERE post_id = 5;

SELECT title, number_of_words
FROM posts
WHERE post_id = 5;

.print
.print Question 5
.print

DELETE FROM posts
WHERE member_id = 3;

SELECT title
FROM posts
WHERE member_id = 3;

.print
.print Question 6
.print

DELETE FROM posts
WHERE member_id = 1
AND post_date < 2016-08-08;

SELECT title, post_date
FROM posts
WHERE member_id = 1;

-- end with a blank line
.print
