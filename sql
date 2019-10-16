-- get all customers whose first names contain 'dan' (eg Dan, Daniel, Jordan)

SELECT *
FROM customer
WHERE first_name ILIKE '%dan%';

-- get all customers whose last names contain 'dan' (eg Dan, Daniel, Jordan) 

SELECT *
FROM customer
WHERE last_name ILIKE '%dan%';

-- now add the results of the first query to the results of the second (UNION)
SELECT *
FROM customer
WHERE first_name ILIKE '%dan%'
UNION
SELECT *
FROM customer
WHERE last_name ILIKE '%dan%';

-- find customers exist in both queries
-- hint: there's one
SELECT *
FROM customer
WHERE first_name ILIKE '%dan%'
INTERSECT
SELECT *
FROM customer
WHERE last_name ILIKE '%dan%';

-- find all film with 'Fred' in the title
SELECT * 
FROM film
WHERE title ILIKE '%fred%';

--find all films that mention squirrels in the description
SELECT * 
FROM film
WHERE description ILIKE '%squirrel%';

--find the intersection of the two previous subqueries
-- hint: there's two

SELECT * 
FROM film
WHERE title ILIKE '%fred%'
INTERSECT
SELECT * 
FROM film
WHERE description ILIKE '%squirrel%';