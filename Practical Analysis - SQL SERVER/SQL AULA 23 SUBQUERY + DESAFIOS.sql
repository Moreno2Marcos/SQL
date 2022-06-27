-- Monte um relatório de todos os produtos cadastrados que têm preco
-- de venda acima da media

SELECT *
FROM Production.Product;

SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

/* Encontre os nomes dos funcionários que têm cargo de 'Design Engineer' */

SELECT TOP 3 *
FROM Person.Person;

SELECT TOP 3 *
FROM HumanResources.Employee;

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID in 
						(SELECT BusinessEntityID 
						FROM HumanResources.Employee
						WHERE JobTitle = 'Design Engineer')

-- usando join

SELECT pp.FirstName
FROM Person.Person pp
INNER JOIN HumanResources.Employee he ON pp.BusinessEntityID = he.BusinessEntityID
WHERE he.JobTitle = 'Design Engineer'

/* Encontre todos os enderecos que estao no estado de 'Alberta', pode trazer todas as informações */

SELECT TOP 3 *
FROM Person.Address;

SELECT TOP 3 *
FROM Person.StateProvince;

-- step 1: retorna lista de StateProvinceID no Estado de alberta 
SELECT StateProvinceID
FROM Person.StateProvince
WHERE Name = 'Alberta'
-- step 2: utiliza o step 1 para filtrar apenas os enderecos no estado de Alberta
SELECT *
FROM Person.Address
WHERE StateProvinceID in
						(SELECT StateProvinceID
						FROM Person.StateProvince
						WHERE Name = 'Alberta');