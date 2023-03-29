SELECT
	title
    ,rental_rate
    ,TRUNCATE ( rental_rate, 1 ) AS TRUNCATE_RentalRate
    ,TRUNCATE ( rental_rate, 0 ) AS TRUNCATE_RentalRate_v2
    ,ROUND ( rental_rate ) AS ROUND_RentalRate
FROM sakila.film;