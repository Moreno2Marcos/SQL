# 1- Retorne em uma só consulta os valores de média, máximo, mínimo, contagem e soma do campo ‘total_price’ da tabela items.

SELECT
  ROUND(AVG(total_price), 3) AS preco_medio,
  MAX(total_price) AS preco_maximo,
  MIN(total_price) AS preco_minimo,
  COUNT(total_price) AS contagem_precos,
  SUM(total_price) AS soma_precos
FROM e_commerce.items;

# 2 - Retorne a quantidade de pedidos de cada status por dia, ordenando pelo dia, de forma decrescente.

SELECT
  COUNT(id) AS quantidade_pedidos,
  status,
  DATE(created_at) AS dia
FROM e_commerce.orders
GROUP BY dia, status
ORDER BY dia DESC;

# 3 - Retorne a quantidade total de itens por pedido.

SELECT
  SUM(quantity) AS quantidade_total,
  order_id
FROM e_commerce.items
GROUP BY order_id;

# 4 - Na base de dados ‘covid19_italy’ e tabela ‘data_by_region’ encontre a coluna ‘tests_performed’. Retorne a soma de testes realizados por dia (considerando todas as regiões).

SELECT
  SUM(tests_performed) AS n_testes_realizados,
  DATE(date) AS dia
FROM `bigquery-public-data`.covid19_italy.data_by_region
GROUP BY dia
ORDER BY dia;

# 5 - DESAFIO: Retorne a diferença da soma de recuperados (coluna recovered) com a soma de mortes (coluna deaths) por dia, apenas para a região Toscana.

SELECT
  SUM(recovered) - SUM(deaths) AS diferenca,
  DATE(date) AS dia
FROM `bigquery-public-data`.covid19_italy.data_by_region
WHERE region_name = "Toscana"
GROUP BY dia
ORDER BY dia;











