# STARTS_WITH

SELECT
  STARTS_WITH("Homem Aranha", "H"),
  STARTS_WITH("Homem Aranha", "h"),   # CASE SENSITIVE
  STARTS_WITH("Homem Aranha", "Homem");

# Retornar somente os clientes que comecam com MA da tabela CUSTOMERS

SELECT
  id,
  first_name
FROM e_commerce.customers
WHERE STARTS_WITH(first_name, "Ma") IS TRUE;

SELECT
  id,
  first_name
FROM e_commerce.customers
WHERE STARTS_WITH(first_name, "Ma") = FALSE