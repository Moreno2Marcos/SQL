-- recuperar o nomes do filme com o nome da categoria

select
	FilmTitle
    ,count(FilmTitle)
from
	( SELECT
		C.name AS CategoryName
		,F.title AS FilmTitle
	FROM category AS C
	INNER JOIN film_category AS FC ON C.category_id = FC.category_id
	INNER JOIN film AS F ON F.film_id = FC.film_id ) AS tbl
group by FilmTitle
order by 2 desc