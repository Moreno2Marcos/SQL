# COUNT
SELECT
  COUNT(*) AS numero_linhas
FROM e_commerce.customers;

SELECT DISTINCT
  status
FROM e_commerce.orders;

SELECT
  COUNT(DISTINCT status) AS status_distintos,
  COUNT(status) AS status
FROM e_commerce.orders;

# Contar o numero de pedidos x mes
SELECT
  COUNT(id) AS numero_pedidos,
  FORMAT_TIMESTAMP("%Y-%m", created_at) AS mes
FROM e_commerce.orders
GROUP BY mes
ORDER BY mes;

# Calcular o numero de usuarios x ano
SELECT
  COUNT(id) AS numero_cadastrados,
  FORMAT_TIMESTAMP("%Y", created_at) AS ano
FROM e_commerce.customers
GROUP BY ano
ORDER BY ano;

# Calcular o numero de usuarios x ano no estado Acre
SELECT
  COUNT(id) AS numero_cadastrados_acre,
  FORMAT_TIMESTAMP("%Y", created_at) AS ano
FROM e_commerce.customers
WHERE state = 'Acre'
GROUP BY ano
ORDER BY ano;

# Para colocar mais colunas numa QUERY só!
SELECT
  COUNT(CASE WHEN state = 'Acre' THEN id END) AS numero_cadastrados_acre,
  FORMAT_TIMESTAMP("%Y", created_at) AS ano
FROM e_commerce.customers
GROUP BY ano
ORDER BY ano;