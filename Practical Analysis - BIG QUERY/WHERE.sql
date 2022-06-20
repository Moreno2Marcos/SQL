# Valores distintos de QUANTITY
SELECT DISTINCT
  quantity
FROM e_commerce.items;

# Filtrar registro com QUANTITY > 4
SELECT
  *
FROM e_commerce.items
WHERE quantity > 4;   # quantity = 5

# Filtrar registros ENTRE 2 e 4 para QAUNTITY
SELECT
  *
FROM e_commerce.items
WHERE quantity BETWEEN 2 AND 4;

# Filtrar registros com valores para STATUS = Acre
SELECT
  id,
  state
FROM e_commerce.customers
WHERE state = 'Acre';

# Filtrar registros com valores para STATUS = Acre or EMAIL não nulo
SELECT
  *
FROM e_commerce.customers
WHERE state = 'Acre' AND email IS NOT NULL;

SELECT
  *
FROM e_commerce.customers
WHERE (state = 'Acre' OR state = 'São Paulo') AND street IS NOT NULL;

SELECT
  *
FROM e_commerce.orders
WHERE status IN ('entrega_pendente', 'cancelado');

# Lembrar os valores distintos do campo STATUS da tabela ORDERS
SELECT DISTINCT
  status
FROM e_commerce.orders;

# Retornar registros com os valor "cancelado" e "entrega_pendente" no campo STATUS da tabela ORDERS
SELECT
 *
FROM e_commerce.orders
WHERE status in ('cancelado', 'entrega_pendente');   # status = 'cancelado' OR status = 'entrega_pendente';