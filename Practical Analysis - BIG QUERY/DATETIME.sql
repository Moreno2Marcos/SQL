# datetime

select
  datetime(2020,06,12,21,05,03) as date_and_time,
  current_timestamp as coluna2,
  current_datetime() as COL,
  datetime(current_timestamp) as coluna3,
  datetime(current_timestamp, "America/Sao_Paulo") as coluna4,
  datetime(current_date);

SELECT
  id,
  created_at,
  DATETIME(created_at) AS date_and_time,
  DATETIME(created_at, "America/Recife") AS date_and_time_2
FROM e_commerce.customers
limit 3


