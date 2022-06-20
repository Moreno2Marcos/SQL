# Aritméticos
SELECT
  1 + 1 AS soma,
  5 - 4 AS subtracao,
  7 * 2 AS multiplicacao,
  10 / 2 AS divisao;

# Comparação
SELECT
  1 = 1,
  3 > 4,
  4 > 4,
  7 < 10,
  11 <= 6;

  # Between
SELECT 
  2 BETWEEN 0 AND 10,
  -4 BETWEEN 0 AND 15;

SELECT
  *
FROM e_commerce.products
WHERE price between 10 AND 50;

  # Like
SELECT
  first_name
FROM e_commerce.customers
WHERE first_name LIKE 'M%';   # %: pode ter qualquer coisa depois do M
  
SELECT
  *
FROM e_commerce.customers
WHERE first_name LIKE '%m%';   # O 'M' pode estar em qualquer lugar

SELECT
  *
FROM e_commerce.customers
WHERE first_name LIKE '%m%' OR first_name LIKE 'M%';

# Retorna todos os registros da tabela CUSTOMERS cujos valores do campo STATE terminam com a letra O
SELECT
  *
FROM e_commerce.customers
WHERE state LIKE '%o';

  # In
SELECT
  *
FROM e_commerce.customers
WHERE state IN ('Alagoas', 'Piauí');

SELECT
  *
FROM e_commerce.products
WHERE price IN (75, 10, 15);

#Retorna todos os registro da tabela onde o email é nulo

  # Is NULL
SELECT
  *
FROM e_commerce.customers
WHERE email IS NULL;

#Retorna todos os registro da tabela onde não tem email nulo

  # IS NOT NULL
SELECT
  *
FROM e_commerce.customers
WHERE email IS NOT NULL;

  # IS TRUE
SELECT
  *
FROM `bigquery-public-data`.chicago_crime.crime
WHERE arrest IS TRUE;

  # IS FALSE
SELECT
  *
FROM `bigquery-public-data`.chicago_crime.crime
WHERE arrest IS FALSE;











