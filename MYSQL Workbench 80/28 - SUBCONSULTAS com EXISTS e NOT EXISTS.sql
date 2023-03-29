SELECT * FROM rental
WHERE rental_id IN
(
	SELECT rental_id FROM payment
);

SELECT 
	*
FROM rental as r
WHERE NOT EXISTS ( SELECT * FROM payment as p WHERE r.rental_id = p.rental_id );


SELECT 
	*
FROM rental as r
WHERE EXISTS ( SELECT * FROM actor as a WHERE a.actor_id = r.rental_id )
ORDER BY rental_id;

SELECT * FROM sakila.payment ORDER BY rental_id;

DELETE FROM payment WHERE rental_id = 1;