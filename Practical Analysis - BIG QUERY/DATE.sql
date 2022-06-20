# DATE

SELECT
  DATE(2020, 06, 12) AS data,
  CURRENT_TIMESTAMP,
  DATE(CURRENT_TIMESTAMP),
  DATE(CURRENT_TIMESTAMP, "America/Recife"),
  DATE(CURRENT_DATETIME) AS datetime_,
  CURRENT_DATETIME("America/Recife");

SELECT
  id,
  created_at,
  DATE(created_at) AS ymd
FROM e_commerce.customers;

SELECT
  COUNT(id) AS num_pedidos,
  DATE(created_at) AS dia,
  extract(DAYOFWEEK from created_at) as day
FROM e_commerce.orders
GROUP BY dia, day
ORDER BY dia;

SELECT
  COUNT(DISTINCT id) AS num_pedidos,
  created_at AS dia
FROM e_commerce.orders
GROUP BY dia
ORDER BY dia;

select 
count(id) as n_orders,
extract(month from created_at) as n_month
from e_commerce.orders
group by n_month
order by n_orders desc;

select 
current_time("America/Recife");

select
round(avg(n_orders), 0) as avg_n_orders
from 
  (select 
  extract(HOUR from created_at) as hour,
  count(*) as n_orders
  from e_commerce.orders
  group by hour
  having hour >= 18
  order by n_orders desc) t;








