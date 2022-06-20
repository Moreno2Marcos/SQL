# Comando condicional: IF
# Exemplo 1
SELECT
  id,
  name,
  IF (name = 'Moda e Acessórios', 'Sim. é Moda e Acessórios', 'Não encontrado') AS if1
FROM e_commerce.categories;

# IF anidado
SELECT
  id,
  name,
  IF (name = 'Moda e Acessórios', 'Sim. é Moda e Acessórios',
    IF (name = 'Livros', 'Sim, é Livros', 'Não encontrado') ) AS if2
FROM e_commerce.categories;

# Exemplo 2
SELECT
  id,
  name,
  IF (id BETWEEN 0 AND 5, 'Entre 0 e 5', 'Maior que 5') AS if1,
  IF (name = 'Moda e Acessórios', 'Sim. é Moda e Acessórios',
    IF (name = 'Livros', 'Sim, é Livros', 'Não encontrado') ) AS if2
FROM e_commerce.categories;