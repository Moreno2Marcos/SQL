-- calcula o total geral de todas as transa��es
SELECT SUM(LineTotal) as total_vendas
FROM Sales.SalesOrderDetail;

SELECT SUM(t.total_vendas)
FROM
	(SELECT top 10 LineTotal as total_vendas
	FROM Sales.SalesOrderDetail) t;

-- qual � o menor valor de uma transa��o?
SELECT MIN(lineTotal)
FROM Sales.SalesOrderDetail;

-- qual � o maior valor de uma transa��o?
SELECT MAX(lineTotal)
FROM Sales.SalesOrderDetail;

-- quanto o valor m�dio de uma transa��o?
SELECT AVG(lineTotal)
FROM Sales.SalesOrderDetail;