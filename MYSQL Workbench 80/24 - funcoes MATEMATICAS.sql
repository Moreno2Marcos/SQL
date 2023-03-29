SELECT 
	A.last_name
	,A.first_name
    ,AVG( F.length ) AS FilmsAverageLength
    ,TRUNCATE ( AVG ( F.length ), 0 )  AS TRUNCATE_FilmsAverageLength
    ,AVG ( TRUNCATE ( F.replacement_cost, 0 ) )  AS TRUNCATE_FilmsAverageLength_V1
    ,TRUNCATE ( AVG ( F.replacement_cost ), 0 )  AS TRUNCATE_FilmsAverageLength_V2
	,MIN( F.length ) AS FilmMinLength
    ,MAX( F.length ) AS FilmMaxLength
    ,AVG( F.rental_duration ) AS RentalDurationAverage
    ,COUNT( * ) AS NumbersOfFilms
FROM 
	actor AS A
    INNER JOIN film_actor AS FA ON A.actor_id = FA.actor_id
    INNER JOIN film AS F ON F.film_id = FA.film_id
WHERE F.release_year = 2006
GROUP BY A.last_name, A.first_name
HAVING NumbersOfFilms > 20 AND FilmsAverageLength > 100
ORDER BY FilmsAverageLength DESC;