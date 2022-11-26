USE adventureworks
GO

-- create a view
CREATE VIEW MorenoM.CustOrders
AS
-- sum quantity of orders for each customer
SELECT 
 OH.CustomerID
,DATEPART(MONTH, OH.OrderDate) AS OrderMonth
,SUM(OD.OrderQty) AS Qty
FROM SalesLT.SalesOrderHeader AS OH
INNER JOIN SalesLT.SalesOrderDetail AS OD
ON OH.SalesOrderID = OD.SalesOrderID
GROUP BY OH.CustomerID, DATEPART(MONTH, OH.OrderDate);
GO

-- call view
SELECT * FROM MorenoM.CustOrders