# SubQuery do tipo TABELA

#1- calcular a média de acessos de TODOS os usuarios usando SubQuery do tipo TABELA (Primeiro calcular a quantidade de acessos de CADA UM dos usuarios e retornar como TABELA) 
SELECT
  AVG(num_acessos) AS media_acessos
FROM(
  SELECT
    u.id AS user_id,
    u.user_name,
    COUNT(a.id) AS num_acessos
  FROM banco_teste.usuarios AS u
  LEFT JOIN banco_teste.acessos AS a ON u.id = a.user_id
  GROUP BY u.id, u.user_name);

#2 - Contar o numero de pedidos por usuario (CUSTOMERS) na tabela de ORDERS --- SOMENTE os pedidos que foram entregues(STATUS = entregue). ALEM DISSO, COM SUBQuery como JOIN, eu somente quero pegar os usuarios que foram cadastrados entre 01/01/2018 e 31/01/2018 ( só janeiro)
SELECT
  customer_id,
  COUNT(DISTINCT o.id) AS num_pedidos
FROM e_commerce.orders AS o
JOIN (
  SELECT
    DISTINCT c.id
  FROM e_commerce.customers AS c
  WHERE DATE(c.created_at) BETWEEN '2018-01-01' AND '2018-01-31') AS T ON T.id = o.customer_id
WHERE status = "entregue"
GROUP BY customer_id
ORDER BY num_pedidos DESC












