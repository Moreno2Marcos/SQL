# MAX
SELECT
  MAX(price) AS preco_maximo
FROM e_commerce.products;

# Quero saber o preco maximo x categoria do produto
SELECT
  MAX(p.price) AS preco_maximo,
  c.name
FROM e_commerce.products AS p
JOIN e_commerce.categories AS c ON p.category_id = c.id
GROUP BY name;

# Quero saber a ultima compra de cada cliente
SELECT
  MAX(created_at) AS ultima_compra,
  customer_id	
FROM e_commerce.orders
GROUP BY customer_id;

# Qual o preco maximo de uma categoria
SELECT
  MAX(CASE WHEN c.name = 'Moda e Acessórios' THEN p.price END) AS preco_maximo
FROM e_commerce.products AS p
JOIN e_commerce.categories AS c ON p.category_id = c.id
