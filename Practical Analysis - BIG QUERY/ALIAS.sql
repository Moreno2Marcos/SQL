SELECT
  1 + 2 AS somaaaaa,
  7 - 1000 AS diferenca;

# Mudar o nome do campo da tabela temporariamente
SELECT
  id,
  name AS nome_da_caegoria
FROM e_commerce.categories;

# Mudar o nome da tabela temporariamente
SELECT
  t.id,
  t.order_id,
  t.product_id AS produto
FROM e_commerce.items AS t;