use AdventureWorks2017
-- soma 2 colunas
SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail;

-- substrai 2 colunas
SELECT UnitPrice - LineTotal
FROM Sales.SalesOrderDetail;

-- multiplcia 2 colunas
SELECT UnitPrice * LineTotal
FROM Sales.SalesOrderDetail;

-- divide 2 colunas
SELECT UnitPrice / LineTotal
FROM Sales.SalesOrderDetail;

-- calcula a média
select AVG(linetotal)
from Sales.SalesOrderDetail;

-- soma coluna inteira
select SUM(linetotal)
from Sales.SalesOrderDetail;

-- calcula o max valor da coluna
select MAX(linetotal)
from Sales.SalesOrderDetail;

-- aredonda os valores da coluna
select linetotal, round(linetotal, 2)
from Sales.SalesOrderDetail;

-- calcula a raiz quadrada e aredonda os valores da coluna 
select round(sqrt(linetotal), 2)
from Sales.SalesOrderDetail;

/* practising... */

-- EDA
select top 10 *
from Purchasing.PurchaseOrderDetail;

select top 10 *
from Sales.SalesOrderDetail;

-- corrobora a consistencia da coluna LineTotal
select OrderQty * UnitPrice, LineTotal
from Purchasing.PurchaseOrderDetail;

select (OrderQty * UnitPrice) - UnitPriceDiscount, 
      ROUND(linetotal, 2),
      LineTotal,
	  RIGHT(convert(varchar, linetotal),
	        LEN(linetotal) - CHARINDEX('.', linetotal))
from Sales.SalesOrderDetail;