# CONCAT

SELECT
  "Hello",
  "World",
  CONCAT("Hello", "World") AS frase,
  CONCAT("Hello", " ", "World") AS frase_corregida_1,
  CONCAT("Hello", " World") AS frase_corregida_2;

SELECT
  CONCAT(first_name, " ", last_name) AS nome_completo
FROM e_commerce.customers;

# Resumindo informacoes
SELECT 
  id,
  CONCAT("Quantidade de items ", quantity, " - ", " Preço total: ", total_price) AS resumo
FROM e_commerce.items;