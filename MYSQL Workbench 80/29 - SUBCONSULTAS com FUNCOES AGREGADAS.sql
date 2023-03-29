/*
	Qual é o nome do(s) filme(s) que tem a maior duração ?
*/

SELECT
	title
FROM film
WHERE length = 
			  ( SELECT
					max(length)
				FROM film )

