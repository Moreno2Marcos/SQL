use adventureworks
go


-- INNER JOIN to compare with the APPLY oprator
SELECT
	 oh.SalesOrderID
	,oh.OrderDate
	,od.ProductID
	,od.UnitPrice
	,od.Orderqty 
FROM SalesLT.SalesOrderHeader AS oh 
INNER JOIN SalesLT.SalesOrderDetail AS od 
ON oh.SalesOrderID = od.SalesOrderID;

-- OUTER APPLY operator
SELECT 
	 oh.SalesOrderID
	,oh.OrderDate
	,od.ProductID
	,od.UnitPrice
	,od.Orderqty 
FROM SalesLT.SalesOrderHeader AS oh 
OUTER APPLY 
	( SELECT productid, unitprice, Orderqty 
      FROM SalesLT.SalesOrderDetail AS od 
      WHERE oh.SalesOrderID = od.SalesOrderID ) AS od;

-- CROSS APPLY operator
SELECT 
	 oh.SalesOrderID
	,oh.OrderDate
	,od.ProductID
	,od.UnitPrice
	,od.Orderqty 
FROM SalesLT.SalesOrderHeader AS oh 
CROSS APPLY 
	( SELECT productid, unitprice, Orderqty 
      FROM SalesLT.SalesOrderDetail AS od 
      WHERE oh.SalesOrderID = od.SalesOrderID ) AS od;