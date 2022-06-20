# SUM
# Quero pegar o faturamento de todo historico da empresa
SELECT
  SUM(total_price) AS total_faturamento
FROM e_commerce.items;

# Quero saber a venda total x dia
SELECT
  SUM(i.total_price) AS faturamento_diario,
  DATE(o.created_at) AS dia
FROM e_commerce.items AS i 
JOIN e_commerce.orders AS o ON i.order_id = o.id
GROUP BY dia
ORDER BY dia;

SELECT
  SUM(IF(state = "Acre", 1, 0)) AS n_usarios_acre
FROM e_commerce.customers;