# GROUP BY : RETORNA SO OS VALORES DISITINTOS DO CAMPO
SELECT
  customer_id
FROM e_commerce.orders
GROUP BY customer_id;

SELECT
  customer_id   # Primeira (1) coluna
FROM e_commerce.orders
GROUP BY 1;

# Retornar o numero de pedidos por dia na tabela ORDERS
SELECT
  DATE(created_at) AS dia,
  COUNT(id) AS quantidade_pedidos
FROM e_commerce.orders
GROUP BY dia;

SELECT
  COUNT(DISTINCT product_id) AS quantidade_produtos,
  order_id AS pedido
FROM e_commerce.items
GROUP BY 2;