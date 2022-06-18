-- quais os nomes no sistema que tem uma ocorrencia maior que 10 vezes?
SELECT FirstName, COUNT(*) as contagem
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(*) > 10;

-- quais produtos cujo total de vendas esta entre 162k e 500k?
SELECT ProductID, SUM(linetotal) as total_vendas
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) between 162000 and 500000;

-- quais nomes no sistema tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr.'
SELECT FirstName, COUNT(*) as contagem
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(*) > 10;

/* estamos querendo identificar as provincias (stateProvinceId) com o maior numero de cadastros no sistema,
entao é preciso encontrar quais provincias estao registradas no bd mais que 1000 vezes */
SELECT StateProvinceID, COUNT(*) as qtde
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(*) > 1000;

/* sabendo que se trata de uma multinacional, os gerentes querem saber quais produtos (productId) não estão 
trazendo em média no minimo 1 milhao em total de vendas (lineTotal) */
SELECT ProductID, avg(linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING avg(linetotal) < 1000000;