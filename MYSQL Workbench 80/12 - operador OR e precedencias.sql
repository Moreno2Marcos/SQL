SELECT 
	*
FROM sakila.film
WHERE release_year = 2018 OR language_id = 1;

-- PRECEDENCIA IMPLICITA: PRIMEIRO EXECUTA OS "E" E DEPOIS OS "OU"

SELECT 
	*
FROM sakila.film
WHERE 
	-- expressao lógica!
	release_year = 2006
	AND
	( rental_rate >= 6 OR length >= 90 )  -- precedencia explicita ( )