USE AdventureWorks2017
GO

-- retrive information about orders placed per year by distinct customers
SELECT
	OrderYear
	,COUNT(DISTINCT CustomerID) AS CustCount
FROM
	(SELECT
		YEAR(OrderDate) AS OrderYear
		,CustomerID
	FROM Sales.SalesOrderHeader) AS derived_year  -- create derived table
GROUP BY OrderYear

/* retrive information about orders placed per year by distinct customers and	
   by one sales person (employee) */

DECLARE @emp_id INT = 279
SELECT
	OrderYear
	,COUNT(DISTINCT CustomerID) AS CustCount
FROM (
	  SELECT
		  YEAR(OrderDate) AS OrderYear
		  ,CustomerID
	  FROM Sales.SalesOrderHeader
	  WHERE SalesPersonID = @emp_id ) AS derived_year
GROUP BY OrderYear
GO