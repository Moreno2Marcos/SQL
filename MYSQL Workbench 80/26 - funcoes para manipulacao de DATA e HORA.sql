SET lc_time_names = 'pt_BR';  -- portugues!

SELECT
	rental_date
    ,YEAR ( rental_date ) AS YEAR_RentalDate
    ,MONTH ( rental_date ) AS MONTH_RentalDate
    ,WEEKDAY ( rental_date ) + 1 AS WEEKDAY_RentalDate
    ,NOW() AS Today
    ,DATE_ADD( NOW(), INTERVAL 1 DAY ) AS Tomorow
    ,DATE_SUB( NOW(), INTERVAL 1 DAY ) AS Yesterday
    ,MONTHNAME ( NOW() )
    ,MONTHNAME ( DATE_SUB( NOW(), INTERVAL 1 DAY ) )
    ,DAYNAME ( NOW() )
    ,return_date
    ,rental_date
--     ,DATEDIFF( return_date, rental_date )
    ,DATE_ADD( return_date, INTERVAL 30 SECOND ) 
    ,DATE_ADD( return_date, INTERVAL 3 MINUTE )
    ,DATE_ADD( return_date, INTERVAL 3 HOUR )
FROM sakila.rental;