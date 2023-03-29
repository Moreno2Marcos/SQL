
/*
	Quais pagamentos não são relacionados a aluguel de DVDs ?
*/

SELECT * FROM sakila.payment
WHERE rental_id IS NULL;

SELECT * FROM sakila.payment
WHERE rental_id IS NOT NULL;
