SELECT
	*
FROM film
WHERE title = 'ALABAMA DEVIL';

/*
	Recuperar filmes que comecam apenas pela letra S
*/

SELECT
	*
FROM film
WHERE title LIKE 'S%';  -- conceito de PESQUISA

/*
	Recuperar filmes que comecam e terminam coma a letra S
*/

SELECT
	*
FROM film
WHERE title LIKE 'S%' AND title LIKE '%S';

/*
	Recuperar filmes que contenham na sua descricao a palavra GULF
*/

SELECT
	*
FROM film
WHERE description LIKE '%GULF%';

/*
	Pesquisar por todos os atores no cujo primeiro nome, a sua segunda letra seja E
*/

SELECT
	*
FROM actor
WHERE first_name LIKE '_E%';