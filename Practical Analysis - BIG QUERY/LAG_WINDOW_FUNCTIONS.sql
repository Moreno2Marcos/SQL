# LAG

# Calcular o numero de dias de cada cliente entre compra e compra  para depoies calcular  o tempo medio entre uma compra e outra de cada cliente
SELECT
  customer_id,
  ROUND(AVG(dias_desde_compra_anterior), 0) AS tempo_medio_entre_uma_compra_e_outra
FROM(
  SELECT
    customer_id,
    created_at,
    LAG(created_at) OVER(PARTITION BY customer_id ORDER BY created_at) AS data_compra_anterior,
    TIMESTAMP_DIFF(created_at, LAG(created_at) OVER(PARTITION BY customer_id ORDER BY created_at), day) AS dias_desde_compra_anterior
  FROM e_commerce.orders
  WHERE status = "entregue"
  ORDER BY customer_id, created_at)
GROUP BY customer_id
ORDER BY customer_id;

select 
  customer_id,
  created_at,
  lag(created_at) over (partition by customer_id order by created_at)
from e_commerce.orders
order by customer_id
