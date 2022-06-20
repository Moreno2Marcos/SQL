SELECT
  1,
  2,
  'OLÁ',
  "Olá",
  1+8,
  2/10;

SELECT
  id,
  created_at
FROM e_commerce.customers;

SELECT
  order_id,
  quantity,
  total_price
FROM e_commerce.items;

SELECT
  order_id,
  quantity,
  total_price
FROM e_commerce.items
LIMIT 3;