/*
	Recupearar todos os nomes dos atores que tiveram filmes lançados em 2006
*/

SELECT 
    DISTINCT A.last_name  -- afeta a linha inteira!
	,A.first_name
FROM 
	actor AS A
    INNER JOIN film_actor AS FA ON A.actor_id = FA.actor_id
    INNER JOIN film AS F ON F.film_id = FA.film_id
WHERE F.release_year = 2006
ORDER BY A.last_name, A.first_name;

SELECT 
	-- todas as colunas aqui devem estar no GROUP BY! com excecao das fun. de agregacao
    A.last_name
	,A.first_name
FROM 
	actor AS A
    INNER JOIN film_actor AS FA ON A.actor_id = FA.actor_id
    INNER JOIN film AS F ON F.film_id = FA.film_id
WHERE F.release_year = 2006
GROUP BY last_name, first_name
ORDER BY A.last_name, A.first_name;