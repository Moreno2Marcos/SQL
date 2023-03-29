SELECT * FROM sakila.staff;

UPDATE staff
SET
	first_name = 'Mike'
WHERE staff_id = 1; -- PK 

UPDATE staff
SET
	first_name = 'Jhon'
WHERE staff_id = 2; -- PK 

-- recuperar os filmes com duracao entre 90 e 100 minutos e duracao da locacao igual a 3 e todos os anos menos o 2006
SELECT
	*
FROM film
WHERE length >= 90 AND length <= 100 AND rental_duration = 3 AND release_year <> 2006;