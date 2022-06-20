# MOD

SELECT
  MOD(10, 2),
  MOD(5, 2),
  MOD(10, 4),
  #MOD(2, 0)
  MOD(-10, 4),
  MOD(-10, -4);

SELECT
  *,
  IF(MOD(id, 2) = 0, "Par", "Ímpar") AS paridade
FROM e_commerce.categories;

SELECT
  *,
  CASE
    WHEN MOD(id, 2) = 0 THEN "Par"
    WHEN MOD(id, 2) != 0 THEN "Ímpar"
    END AS paridade
FROM e_commerce.categories
