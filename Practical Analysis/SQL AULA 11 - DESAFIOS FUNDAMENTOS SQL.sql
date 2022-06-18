/* quantos produtos temos cadastrados no sistema que custam mais que 1500 dolares? */
SELECT COUNT(*)
FROM Production.Product
WHERE ListPrice > 1500;

/* quantas pessoas temos com o sobrenome que inicia com a letra P? */
SELECT COUNT(*)
FROM Person.Person
WHERE LastName like 'p%';

/* em quantas cidades únicas estão cadastrados nossos clientes? */
SELECT COUNT(DISTINCT city)
FROM Person.Address;

/* quais são as cidades únicas que temos cadastrados em nosso sistema? */
SELECT DISTINCT city
FROM Person.Address;

/* quantos produtos vermelhos tem preco entre 500 e 1000 doalres? */
SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red' and (ListPrice between 500 and 1000);

/* quantos produtos cadastrados tem a palavra 'road' no nome deles? */
SELECT COUNT(*)
FROM Production.Product
WHERE Name like '%road%';