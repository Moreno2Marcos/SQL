# UPPER

SELECT
  *
FROM e_commerce.exemplo_estados
WHERE estados in ("São Paulo", "são paulo", "são Paulo", "SÃO PAULO");

# Para buscar/contar
SELECT
  *
FROM e_commerce.exemplo_estados
WHERE UPPER(estados) = "SÃO PAULO";

# Para converter uma coluna a minuscula
SELECT
  id,
  name,
  UPPER(name) AS name_maiusculo
FROM e_commerce.categories;