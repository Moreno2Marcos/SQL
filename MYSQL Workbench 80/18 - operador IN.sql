SELECT
	C.name AS CategoryName
	,F.title AS FilmTitle
FROM category AS C
INNER JOIN film_category AS FC ON C.category_id = FC.category_id
INNER JOIN film AS F ON F.film_id = FC.film_id
WHERE C.name IN ( 'Horror', 'Drama' );  -- operador IN

SELECT
	C.name AS CategoryName
	,F.title AS FilmTitle
FROM category AS C
INNER JOIN film_category AS FC ON C.category_id = FC.category_id
INNER JOIN film AS F ON F.film_id = FC.film_id
WHERE C.name = 'Horror' OR C.name = 'Drama';

SELECT
	C.name AS CategoryName
	,F.title AS FilmTitle
FROM category AS C
INNER JOIN film_category AS FC ON C.category_id = FC.category_id
INNER JOIN film AS F ON F.film_id = FC.film_id
WHERE C.name NOT IN ( 'Horror', 'Drama' ); 