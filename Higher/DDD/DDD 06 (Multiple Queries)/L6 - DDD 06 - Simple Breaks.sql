.read setup.sql
.schema

.print
.print Question 1
.print

CREATE VIEW "Furthest from Airport" AS 
SELECT MAX(kilometres_from_airport) AS "Longest Distance"
FROM hotels;

SELECT hotel_name, destination, country, kilometres_from_airport
FROM hotels, holidays, "Furthest from Airport"
WHERE hotels.hotel_ref = holidays.hotel_ref
AND kilometres_from_airport = "Longest Distance";

.print
.print Question 2
.print

CREATE VIEW "Average Star Rating" AS
SELECT AVG(star_rating) AS "Average Rating"
FROM hotels, holidays
WHERE hotels.hotel_ref = holidays.hotel_ref
AND title LIKE '%Break%' or title LIKE '%Package%';

SELECT hotel_name, star_rating
FROM hotels, "Average Star Rating"
WHERE star_rating < "Average Rating"
ORDER BY star_rating desc, hotel_name asc;

.print
.print Question 3
.print

CREATE VIEW "Dearest Edinburgh Hotel" AS
SELECT MAX(price_per_night) AS "Dearest Hotel"
FROM hotels
WHERE city = 'Edinburgh';

SELECT hotel_name, city, price_per_night
FROM hotels, "Dearest Edinburgh Hotel"
WHERE price_per_night > "Dearest Hotel"
ORDER BY price_per_night desc, city asc;

.print
.print Question 4
.print

CREATE VIEW "Der Wald Rating" AS
SELECT star_rating AS "Rating"
FROM hotels
WHERE hotel_name = 'Der Wald';

SELECT COUNT(*) AS "Rate Count"
FROM hotels, "Der Wald Rating", holidays
WHERE star_rating = "Rating"
and hotels.hotel_ref = holidays.hotel_ref;

.print 
.print Question 5
.print

CREATE VIEW "Average Distance" AS
SELECT AVG(kilometres_from_airport) AS "Distance"
FROM hotels, holidays
WHERE country = 'Spain';

SELECT title, city, kilometres_from_airport
FROM hotels, holidays, "Average Distance"
WHERE kilometres_from_airport < "Distance"
AND city = 'Lisbon'
AND hotels.hotel_ref = holidays.hotel_ref;

.print
.print Question 6
.print

CREATE VIEW "Longest Duration" AS
SELECT MAX(nights) AS "Same Duration"
FROM hotels, holidays
WHERE city LIKE '_o%';

SELECT title, date_of_departure, nights
FROM holidays, "Longest Duration"
WHERE nights = "Same Duration";

-- end with a blank line
.print
