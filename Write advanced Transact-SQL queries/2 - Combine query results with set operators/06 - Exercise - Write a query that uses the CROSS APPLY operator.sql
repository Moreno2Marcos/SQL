 USE adventureworks
 GO
 
 /*
 create a table-valued function to return the product category name 
 and quantity ordered by specific customers. 
 */
 CREATE OR ALTER FUNCTION dbo.ProductSales (@CustomerID INT)
 RETURNS TABLE
 RETURN
     SELECT 
		C.[Name] AS 'Category'
		,SUM(D.OrderQty) AS 'Quantity'
     FROM SalesLT.SalesOrderHeader AS H
     INNER JOIN SalesLT.SalesOrderDetail AS D
         ON H.SalesOrderID = D.SalesOrderID
     INNER JOIN SalesLT.Product AS P
         ON D.ProductID = P.ProductID
     INNER JOIN SalesLT.ProductCategory AS C
        ON P.ProductCategoryID = C.ProductCategoryID
     WHERE H.CustomerID = @CustomerID
     GROUP BY C.[Name]
GO

SELECT C.CustomerID, C.CompanyName, P.Category, P.Quantity
FROM SalesLT.Customer AS C
    CROSS APPLY dbo.ProductSales(C.CustomerID) AS P
ORDER BY C.CustomerID

-- INNER JOIN version only for comparative porpuses (same results)
SELECT 
CU.CustomerID
,CU.CompanyName
,C.[Name] AS 'Category'
,SUM(D.OrderQty) AS 'Quantity'
FROM SalesLT.SalesOrderHeader AS H
INNER JOIN SalesLT.SalesOrderDetail AS D
    ON H.SalesOrderID = D.SalesOrderID
INNER JOIN SalesLT.Product AS P
    ON D.ProductID = P.ProductID
INNER JOIN SalesLT.ProductCategory AS C
	ON P.ProductCategoryID = C.ProductCategoryID
INNER JOIN SalesLT.Customer AS CU
	ON CU.CustomerID = H.CustomerID
GROUP BY CU.CustomerID, CU.CompanyName, C.[Name]
ORDER BY CU.CustomerID


