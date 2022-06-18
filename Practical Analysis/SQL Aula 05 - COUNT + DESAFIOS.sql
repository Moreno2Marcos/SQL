-- conta o número de registros de uma tabela
SELECT COUNT(*)
FROM Person.Person;

-- quantas pessoas tem um Title diferente
SELECT Title, COUNT(*) as quantidade
FROM Person.Person
GROUP BY Title;

-- quantas valores não vazios possui a coluna title
SELECT COUNT(Title)
FROM Person.Person;

-- quantos valores únicos tem a coluna title
SELECT COUNT(DISTINCT Title)
FROM Person.Person;

/* Eu quero saber quantos produtos temos cadastrados em nossa tabela de produtos */
SELECT COUNT(*)
FROM Production.Product;

/* Quantos tamanhos de produtos temos cadastrado na tabela */
SELECT COUNT(Size)
FROM Production.Product;

/* Quantos tamanhos diferentes de produtos temos cadastrados na tabela */
SELECT COUNT(DISTINCT Size)
FROM Production.Product;