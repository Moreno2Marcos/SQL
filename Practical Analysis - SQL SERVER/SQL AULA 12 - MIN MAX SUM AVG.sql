-- calcula o total geral de todas as transações
SELECT SUM(LineTotal) as total_vendas
FROM Sales.SalesOrderDetail;

SELECT SUM(t.total_vendas)
FROM
	(SELECT top 10 LineTotal as total_vendas
	FROM Sales.SalesOrderDetail) t;

-- qual é o menor valor de uma transação?
SELECT MIN(lineTotal)
FROM Sales.SalesOrderDetail;

-- qual é o maior valor de uma transação?
SELECT MAX(lineTotal)
FROM Sales.SalesOrderDetail;

-- quanto o valor médio de uma transação?
SELECT AVG(lineTotal)
FROM Sales.SalesOrderDetail;