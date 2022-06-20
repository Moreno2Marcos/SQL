# CHAR_LENGTH

SELECT DISTINCT
  status,
  CHAR_LENGTH(status) AS status_cumprimento
FROM e_commerce.orders;

# Busca
SELECT
  COUNT(*) AS quantidade_cancelados
FROM e_commerce.orders
WHERE CHAR_LENGTH(status) = 9