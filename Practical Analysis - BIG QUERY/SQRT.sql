# SQRT
SELECT
  SQRT(4),
  SQRT(5),
  SQRT(100),
  SQRT(ABS(-2));
  
SELECT
  SQRT(total_price) AS raiz_quadrada_total_price
FROM e_commerce.items;