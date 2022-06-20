# LEAD

SELECT
  customer_id,
  created_at,
  LEAD(created_at) OVER(PARTITION BY customer_id ORDER BY created_at) AS data_proxima_compra,
  timestamp_diff(
      LEAD(created_at) OVER(PARTITION BY customer_id ORDER BY created_at),
      created_at,
      DAY) n_days
FROM e_commerce.orders
WHERE status = "entregue"
ORDER BY customer_id, created_at