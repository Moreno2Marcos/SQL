# DATE_DIFF, DATETIME_DIFF, TIMESTAMP_DIFF

SELECT
  DATE_DIFF("2020-08-05", "2020-08-01", DAY) AS exe1,
  DATETIME_DIFF("2020-08-05T14:00:00", "2020-08-05T17:00:00", HOUR) AS exe2,
  TIMESTAMP_DIFF("2020-08-05T17:30:00", "2020-08-05T17:00:00 America/Recife", MINUTE) AS exe3;

# Quanto dias como máximo cada cliente demorar em fazer sua primiera compra conozco?
# Qual é o maior numero de dias entre a data de cadastro e a data da primiera compra dos
# nossos clientes?
# Qual é o intervalo de dias entre o cadastro de cada cliente e a sua primeira compra. 
select
c.id,
c.created_at,
min(o.created_at) as fisr_buy,
timestamp_diff(min(o.created_at), c.created_at, day) as n_days_since_first_buy
from e_commerce.customers c
JOIN e_commerce.orders o
on c.id = o.customer_id
group by c.id, c.created_at
order by n_days_since_first_buy desc;

# solucao do professor.
SELECT
  c.id,
  MIN(TIMESTAMP_DIFF(o.created_at, c.created_at, DAY)) AS dias_ate_1era_compra
FROM e_commerce.customers AS c
JOIN e_commerce.orders AS o ON c.id = o.customer_id
GROUP BY id
order by dias_ate_1era_compra desc



