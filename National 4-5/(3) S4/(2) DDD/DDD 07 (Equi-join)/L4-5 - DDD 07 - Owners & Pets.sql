.read setup.sql
.schema

.print
.print Question 1
.print

SELECT first_name, second_name     
FROM owners, pets
WHERE owners.owner_id = pets.owner_id
AND pet_name = 'Misty';

.print
.print Question 2
.print

SELECT pet_name, type
FROM owners, pets
WHERE owners.owner_id = pets.owner_id
AND first_name = 'Mark'
AND second_name = 'Trench';

.print
.print Question 3
.print

SELECT owners.address
FROM owners, pets
WHERE owners.owner_id = pets.owner_id
AND pets.pet_name = 'Skelly';

.print
.print Question 4
.print

SELECT pets.pet_name, owners.second_name
FROM owners, pets
WHERE owners.owner_id = pets.owner_id
AND town = 'Greenock';

.print
.print Question 5
.print

SELECT pets.type, owners.telephone
FROM owners, pets
WHERE vacc = 'False'
AND owners.owner_id = pets.owner_id
ORDER BY owners.second_name asc;

.print
.print Question 6
.print

SELECT pets.pet_name, pets.dob
FROM owners, pets
WHERE owners.owner_id = pets.owner_id
AND owners.first_name = 'Hardeep'
AND owners.second_name = 'Singh'
ORDER BY dob desc;

.print
.print Question 7
.print

SELECT pet_name, pets.owner_id
FROM pets
WHERE pets.owner_id > 2000
ORDER BY type asc;

.print
.print Question 8
.print

SELECT first_name, second_name, dob
FROM owners, pets
WHERE dob >= '2010-01-01' AND dob <= '2010-12-31'
AND owners.owner_id = pets.owner_id
ORDER BY pet_name asc;

-- end with a blank line
.print
