-- visualiza os 10 primieros registros
SELECT TOP 10 *
FROM Production.Product;

-- renomei nome da coluna com nome simples
SELECT ListPrice as price
FROM Production.Product;

-- renomei nome da coluna com nome composto
SELECT ListPrice as "preco do produto"
FROM Production.Product;

-- calcula a media do preco de venda
SELECT AVG(ListPrice) as preco_medio
FROM Production.Product;

/* encontrar o firstname e lastname da tabela person.person e renomei a portugues */
SELECT FirstName as nome, LastName as sobrenome
FROM Person.Person;

/* renomear a coluna ProductNumber da tabela production.product como: numero do produto */
SELECT ProductNumber as "Numero do Produto"
FROM Production.Product;

/* renomear a coluna unitPrice da tabela sales.salesOrderDetail para: preco unitario */
SELECT UnitPrice as "Preco Unitario"
FROM Sales.SalesOrderDetail;