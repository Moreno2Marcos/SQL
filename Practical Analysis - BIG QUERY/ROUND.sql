# ROUND

SELECT
  ROUND(0.44, 1),
  ROUND(0.45, 1);

SELECT
  AVG(price) AS media_preco,
  ROUND(AVG(price), 2) AS media_preco_2,
  ROUND(AVG(price)) AS media_preco_0
FROM e_commerce.products;