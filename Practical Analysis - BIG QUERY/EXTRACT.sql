# EXTRACT

SELECT
  CURRENT_DATE AS exemplo_1,
  EXTRACT(YEAR FROM CURRENT_DATE) AS exemplo_2,
  EXTRACT(MONTH FROM CURRENT_DATE) AS exemplo_3,
  EXTRACT(DAYOFWEEK FROM CURRENT_DATE) AS exemplo_4,
  CURRENT_TIMESTAMP AS exemplo_5,
  EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS exmplo_6,
  EXTRACT(HOUR FROM CURRENT_TIMESTAMP AT TIME ZONE "America/Recife") AS exemplo_7,
  EXTRACT(SECOND FROM CURRENT_TIMESTAMP AT TIME ZONE "America/Recife") AS exemplo_8,
  EXTRACT(DATE FROM CURRENT_TIMESTAMP AT TIME ZONE "America/Recife") AS exemplo_9,
  EXTRACT(TIME FROM CURRENT_TIMESTAMP AT TIME ZONE "America/Recife") AS exemplo_10;

-- Descobrir quantos pedidos sao realizados por dia da semana par analisar se tem um dia da
-- semana melhor (na minha empresa) que vende mais ou nao

-- my solution
select 
count(distinct id) as n_orders,
extract(DAYOFWEEK from created_at) as num_of_day
from e_commerce.orders
group by num_of_day
order by n_orders desc;

-- solucao do professor
SELECT
  COUNT(DISTINCT id) AS num_pedidos,
  EXTRACT(DAYOFWEEK FROM created_at) AS dia_da_semana
FROM e_commerce.orders
GROUP BY 2
ORDER BY 2;


-- Descobrir quantos pedidos sao realizados por dia da semana par analisar se tem um dia da
-- semana melhor (na minha empresa) que vende mais ou nao. Na tabela resultante mostrar o dia
-- da semana como texto (Segunda, Terca, etc...)
SELECT
  COUNT(DISTINCT id) AS num_pedidos,
  EXTRACT(DAYOFWEEK FROM created_at) AS num_da_semana,
  CASE
    WHEN EXTRACT(DAYOFWEEK FROM created_at) = 1 THEN "Domingo"
    WHEN EXTRACT(DAYOFWEEK FROM created_at) = 2 THEN "Segunda"
    WHEN EXTRACT(DAYOFWEEK FROM created_at) = 3 THEN "Terça"
    WHEN EXTRACT(DAYOFWEEK FROM created_at) = 4 THEN "Quarta"
    WHEN EXTRACT(DAYOFWEEK FROM created_at) = 5 THEN "Quinta"
    WHEN EXTRACT(DAYOFWEEK FROM created_at) = 6 THEN "Sexta"
    WHEN EXTRACT(DAYOFWEEK FROM created_at) = 7 THEN "Sábado"
  END AS dia_da_semana
FROM e_commerce.orders
GROUP BY num_da_semana, dia_da_semana
ORDER BY num_da_semana



  