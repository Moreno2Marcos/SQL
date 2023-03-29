SELECT 
	A.last_name
	,A.first_name
    ,AVG( F.length ) AS FilmsAverageLength
	,MIN( F.length ) AS FilmMinLength
    ,MAX( F.length ) AS FilmMaxLength
    ,AVG( F.rental_duration ) AS RentalDurationAverage
    ,COUNT( * ) AS NumbersOfFilms
FROM 
	actor AS A
    INNER JOIN film_actor AS FA ON A.actor_id = FA.actor_id
    INNER JOIN film AS F ON F.film_id = FA.film_id
WHERE F.release_year = 2006 -- AND A.last_name = 'TEMPLE' AND A.first_name = 'RUSSELL' -- FILTRA POR LINHAS
GROUP BY A.last_name, A.first_name
HAVING NumbersOfFilms > 20 AND FilmsAverageLength > 100
		AND A.last_name = 'TEMPLE' AND A.first_name = 'RUSSELL'	-- FILTRA POR GRUPOS (APOS OS GRUPOS TEREM SIDO CRIADOS... HAVING FILTRA X GRUPO!!! - COLUNA CALCULADA?)
ORDER BY FilmsAverageLength DESC;