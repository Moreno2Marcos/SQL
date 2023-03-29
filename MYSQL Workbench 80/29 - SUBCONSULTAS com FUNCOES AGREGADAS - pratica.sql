/*
	Listar os filmes POR CATEGORIA que possuam uma duração de aluguel e de conteúdo maior ou igual a média respectivamente.
*/

SELECT
	c.name
    ,f.title
    ,f.rental_duration
    ,f.length
FROM film AS f
INNER JOIN film_category AS fc ON f.film_id = fc.film_id
INNER JOIN category AS c ON c.category_id = fc.category_id
WHERE f.rental_duration >= ( SELECT avg(rental_duration) FROM film ) AND
	f.length >= ( SELECT avg(length) FROM film )
ORDER BY c.name;
    

