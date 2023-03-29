SELECT * FROM sakila.film
WHERE length BETWEEN 90 AND 95;

SELECT * FROM sakila.film
WHERE length >= 90 AND length <= 95;

SELECT * FROM sakila.film
WHERE length BETWEEN 90 AND 95
	AND ( replacement_cost BETWEEN 24.99 AND 29 );
    

SELECT
	*
FROM rental
WHERE return_date BETWEEN '2005-05-01' AND '2005-06-10';

SELECT
	*
FROM rental
WHERE return_date NOT BETWEEN '2005-05-01' AND '2005-06-10';