# DATE_SUB, DATETIME_SUB, TIMESTAMP_SUB

SELECT
  CURRENT_DATE AS data_atual,
  DATE_SUB(CURRENT_DATE, INTERVAL 2 DAY) AS data_atual_sub_2days,
  DATE_SUB(CURRENT_DATE, INTERVAL 1 MONTH) AS data_atual_sub_1month,
  DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR) AS data_atual_sub_1year,
  CURRENT_TIMESTAMP AS data_horario_atual,
  TIMESTAMP_SUB(CURRENT_TIMESTAMP, INTERVAL 3 HOUR) AS data_horario_atual_sub_3hours,
  DATETIME_SUB(CURRENT_DATETIME, INTERVAL 3 HOUR) AS data_horario_atual_sub_3hours_,
  DATE_SUB(DATE(2020, 01, 01), INTERVAL 3 DAY) AS example,
  DATE_SUB(DATE "2020-01-01", INTERVAL 3 DAY) AS example_;

# Extrair os clientes que entraram/cadastraram no seu site/aplicativo na ultima semana? para fazer
# uma campanha com eles ou para verificar simplesmente a contagem.

# Fazer uma analises dos pedidos nos ultimos 30 dias.

# Extrair todos os pedidos dos ultimos 365 dias ( 1 ano ) da tabela ORDERS
select
*
from e_commerce.orders
where created_at
  between 
    -- substract 365 days from last timestamp
    (select
    datetime_sub(max(created_at), INTERVAL 365 day) as first_timestamp
    from e_commerce.orders)
  and 
    -- calculate last timestamp
    (select
    max(created_at) as last_timestamp
    from e_commerce.orders)
order by created_at;




# solucao nao automatizada e que nao faz muito sentido...
SELECT
  *
FROM e_commerce.orders
WHERE DATE(created_at) BETWEEN DATE_SUB(DATE(2020, 08, 20), INTERVAL 365 DAY) AND 
  DATE(2020, 08, 20)







