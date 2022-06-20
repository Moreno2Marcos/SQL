# LOWER

SELECT
  COUNT(*)
FROM e_commerce.exemplo_estados
WHERE estados in ("São Paulo", "são paulo", "são Paulo", "SÃO PAULO");

# Para buscar
SELECT
  COUNT(*)
FROM e_commerce.exemplo_estados
WHERE LOWER(estados) = "são paulo";

# Para converter uma coluna a minuscula
SELECT
  id,
  name,
  LOWER(name) AS name_minusculo
FROM e_commerce.categories;