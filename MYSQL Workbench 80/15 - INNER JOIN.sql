SELECT 
	CI.city
	,CO.country AS País
FROM city AS CI
INNER JOIN country AS CO ON CI.country_id = CO.country_id
WHERE CO.country = 'Argentina'
ORDER BY CO.country DESC;

SELECT
	CI.city
    ,CO.country País
FROM city CI, country CO
WHERE CI.country_id = CO.country_id
		AND CO.country = 'Argentina'
ORDER BY CO.country DESC;
