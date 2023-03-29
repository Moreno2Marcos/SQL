SELECT
	*
FROM customer as c
WHERE EXISTS ( SELECT * FROM rental as r WHERE c.customer_id = r.customer_id );

SELECT
	*
FROM customer as c
WHERE NOT EXISTS ( SELECT * FROM rental as r WHERE c.customer_id = r.customer_id );