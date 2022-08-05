--SOURCE--
-- https://platform.stratascratch.com/coding/2015-city-with-the-highest-and-lowest-income-variance?code_type=1

-- QUESTION --
/* What cities recorded the largest growth and biggest drop in order amount between March 11, 2019,
and April 11, 2019. Just compare order amounts on those two dates. Your output should include the names
of the cities and the amount of growth/drop. */

-- RESOLUÇÃO --

-- PASSO 1
SELECT
	amount,
	LAG(amount) OVER(PARTITION BY DATEPART(month, order_timestamp_utc) ORDER BY order_timestamp_utc) as previous,
	name,
	order_timestamp_utc
FROM postmates_orders po
INNER JOIN postmates_markets pm
ON po.city_id = pm.id;

-- PASSO 2
SELECT
	t.name,
	(t.amount - t.previous) / t.previous * 100 as growth_percentage
FROM
	(SELECT
		amount,
		LAG(amount) OVER(PARTITION BY DATEPART(month, order_timestamp_utc) ORDER BY order_timestamp_utc) as previous,
		name,
		order_timestamp_utc
	FROM postmates_orders po
	INNER JOIN postmates_markets pm
	ON po.city_id = pm.id) t;

-- PASSO 3
SELECT TOP 1
	t2.name,
	MIN(t2.growth_percentage) as bigest_drop,
	MAX(t2.growth_percentage) as largest_growth
FROM
	(SELECT
		t.name,
		(t.amount - t.previous) / t.previous * 100 as growth_percentage
	FROM
		(SELECT
			amount,
			LAG(amount) OVER(PARTITION BY DATEPART(month, order_timestamp_utc) 
				ORDER BY order_timestamp_utc) as previous,
			name,
			order_timestamp_utc
		FROM postmates_orders po
		INNER JOIN postmates_markets pm
		ON po.city_id = pm.id) t) t2
GROUP BY t2.name
order by MIN(t2.growth_percentage), MAX(t2.growth_percentage) desc;