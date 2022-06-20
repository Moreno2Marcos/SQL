# SELECT DISTINCT

SELECT DISTINCT
  status
FROM e_commerce.orders;

SELECT DISTINCT
  state
FROM e_commerce.customers;

SELECT DISTINCT
  first_name
FROM e_commerce.customers;

SELECT DISTINCT
  extract(year FROM created_at) AS year
FROM e_commerce.orders;
