-- agrupa por SpecialOfferID e soma UnitPrice
SELECT SpecialOfferID, SUM(UnitPrice) as total
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

-- quantas vendas de cada produto foi vendido até hoje?
SELECT ProductID, COUNT(*) as n_vendas
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- quantos nomes de cada nome temos cadastrado no bd?
SELECT FirstName, COUNT(*) as contagem
FROM Person.Person
GROUP BY FirstName;

-- na tabela production.product calcular a média de preco dos produtos que sao de prata (silver)
SELECT Color, AVG(listprice) as preco_medio
FROM Production.Product
WHERE Color = 'silver'
GROUP BY Color;

-- quantas pessoas tem o mesmo middlename e apresentar agrupadas por o middlename?
SELECT MiddleName, COUNT(*) as qtde
FROM Person.Person
GROUP BY MiddleName;

-- em média, qual é quantidade que cada produto é vendido na loja?
SELECT ProductID, AVG(OrderQty) as qtde_media
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- quais foram as 10 vendas que no total tiveram os maiores valores de venda (line total) por produto do maior
-- para o menor
SELECT TOP 10 ProductID, SUM(LineTotal) as total_venda
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY 2 desc;

-- quantos produtos e qual a quantidade media de produtos temos cadastrados nas nossas ordens de servico (work order)
-- agrupadas por productID
SELECT ProductID, COUNT(*) as qtde, AVG(stockedqty) as qtde_media
FROM Production.WorkOrder
GROUP BY ProductID;