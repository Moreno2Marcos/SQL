SELECT
	first_name
    ,last_name
    ,email
 FROM sakila.customer
 WHERE active = 1
	AND first_name IN 
					(	'KELLY'	,
						'TRACY'	,
						'LESLIE'	,
						'JAMIE'	,
						'MARION'	,
						'JESSIE'	,
						'WILLIE',
                        'TERRY' )
 ORDER BY first_name ASC, last_name DESC;

 
SELECT
	first_name
    ,COUNT( customer_id ) AS NumberOfTimes
FROM customer
GROUP BY first_name
HAVING COUNT( first_name ) > 1;