# MIN
SELECT
  MIN(price) AS preco_minimo
FROM e_commerce.products;

# Quero saber o preco minimo e minimo x categoria do produto
SELECT
  MIN(p.price) AS preco_minimo,
  MAX(p.price) AS preco_maximo,
  c.name
FROM e_commerce.products AS p
JOIN e_commerce.categories AS c ON p.category_id = c.id
GROUP BY name;

# Quero saber a primeira e ultima compra de cada cliente
SELECT
  MIN(created_at) AS primeira_compra_em,
  MAX(created_at) AS ultima_compra_em,
  customer_id	
FROM e_commerce.orders
GROUP BY customer_id;

# Qual o preco minimo de uma categoria
SELECT
  MIN(CASE WHEN c.name = 'Moda e Acessórios' THEN p.price END) AS preco_minimo
FROM e_commerce.products AS p
JOIN e_commerce.categories AS c ON p.category_id = c.id
