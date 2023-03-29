SELECT * FROM film;

/*
	Calcular a média de duração de todos os filmes do ator : ALLEN CUBA
*/

SELECT 
	A.last_name
	,A.first_name
	,AVG( F.length ) AS FilmsAverageLength
FROM 
	actor AS A
    INNER JOIN film_actor AS FA ON A.actor_id = FA.actor_id
    INNER JOIN film AS F ON F.film_id = FA.film_id
WHERE F.release_year = 2006
GROUP BY A.last_name, A.first_name
ORDER BY FilmsAverageLength DESC;

/*
	Qual é a menor e a maior duração de filme por grupo
*/

SELECT 
	A.last_name
	,A.first_name
    ,AVG( F.length ) AS FilmsAverageLength
	,MIN( F.length ) AS FilmMinLength
    ,MAX( F.length ) AS FilmMaxLength
    ,AVG( F.rental_duration ) AS RentalDurationAverage
FROM 
	actor AS A
    INNER JOIN film_actor AS FA ON A.actor_id = FA.actor_id
    INNER JOIN film AS F ON F.film_id = FA.film_id
WHERE F.release_year = 2006
GROUP BY A.last_name, A.first_name
ORDER BY FilmsAverageLength DESC;