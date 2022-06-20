# COMANDOS CONDICIONAIS - CASE
# Uma condição.
SELECT
  id,
  name,
  CASE WHEN name = 'Moda e Acessórios' THEN 'Sim, é Moda e Acessórios' END AS caso1
FROM e_commerce.categories;

# Várias condições. Depoois do THEN devemos retornar mesmo TIPO de dado.
SELECT
  id,
  name,
  CASE 
    WHEN name = 'Moda e Acessórios' THEN 'Sim, é Moda e Acessórios'
    WHEN name = 'Livros' THEN 'Sim, é Livros'
    ELSE 'Não encontrado'
  END AS caso1
FROM e_commerce.categories;

# Se tiver 2 ou mais condicoes verdadeiras, só será considerado a primeira.
SELECT
  id,
  CASE
    WHEN id BETWEEN 0 AND 5 THEN 'Primeiro Verdadeiro'
    WHEN id BETWEEN 3 AND 5 THEN 'Segundo Verdadeito'
    WHEN id BETWEEN 3 AND 7 THEN 'Terceiro Verdadeito'
  END AS caso2,
  name
FROM e_commerce.categories;

# Retorna todos los valores distintos do campo STATE
SELECT DISTINCT
  state
FROM e_commerce.customers;

# CASE pode ser usando dentro de funcoes de agregacao!!! - criar exemplos depois!

# Eu quero criar uma tabela com 2 colunas. Uma coluina STATE(com valores unicos) e uma coluna
# chamada REGIAO. Caso os estados pertencam a regiao SUDESTE, o valor associado a coluna REGIAO 
# devera ser preenchida com o valor SUDESTE. Caso contratio, devera ser preenchida com o valor
# DEMAIS REGIOES

SELECT 
  DISTINCT state,
  CASE
    WHEN state IN ('São Paulo','Rio de Janeiro','Minas Gerais','Espírito Santo') THEN 'Sudeste'
    ELSE 'Demais Regiões'
  END AS region
FROM e_commerce.customers
WHERE state IS NOT NULL;