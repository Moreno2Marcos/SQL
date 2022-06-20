# ORDER BY
SELECT
  *
FROM e_commerce.categories
ORDER BY id DESC;

# Ordenar mais de uma coluna
SELECT
  *
FROM e_commerce.orders
ORDER BY customer_id ASC, status DESC;

SELECT
  customer_id
FROM e_commerce.orders
GROUP BY customer_id
ORDER BY 1 DESC;

SELECT
  DATE(created_at) AS dia,
  COUNT(id) AS quantidade_pedidos
FROM e_commerce.orders
GROUP BY dia
ORDER BY quantidade_pedidos DESC;

SELECT
  DATE(created_at) AS dia,
  COUNT(id) AS quantidade_pedidos
FROM e_commerce.orders
GROUP BY dia
ORDER BY dia DESC;

# Ordenar os pedidos que tiveram a maior quantidade de produtos primeiro
SELECT
  COUNT(DISTINCT product_id) AS quantidade_produtos,
  order_id AS pedido
FROM e_commerce.items
GROUP BY 2
ORDER BY 1 DESC;   # ORDER BY vai depoid de GROUP BY