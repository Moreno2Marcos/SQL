/*
	Listar todos os alugueis (sem duplicidade) que tiveram pagamento
*/

SELECT
	*
FROM rental
WHERE 
	rental_id IN
				( SELECT
						rental_id
				  FROM payment );


/*
	Listar todos os alugueis (sem duplicidade) que NAO tiveram pagamento
*/

SELECT
	*
FROM rental
WHERE 
	rental_id NOT IN
				( SELECT
						rental_id
				  FROM payment );
                  
-- DUPLICADOS ???

SELECT
	R.*
FROM rental R
INNER JOIN payment P ON R.rental_id = P.rental_id;