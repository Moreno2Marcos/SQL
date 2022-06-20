# LAST VALUE

#1- [calcular o numero de dias de cada compra de cada cliente em relacao a sua ultima compra)
SELECT
  customer_id,
  created_at,
  LAST_VALUE(created_at) OVER(PARTITION BY customer_id ORDER BY created_at
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS ultima_compra
FROM e_commerce.orders
WHERE status = "entregue"
ORDER BY customer_id, created_at