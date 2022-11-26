USE AdventureWorks2017
GO

-- retrive information about orders placed per year by distinct customers
WITH CTE_year AS (  -- create CTE
	SELECT
		YEAR(OrderDate) AS OrderYear
		,CustomerID
	FROM Sales.SalesOrderHeader
)
SELECT  -- outer query
	OrderYear, COUNT(DISTINCT CustomerID) AS CustCount
FROM CTE_year
GROUP BY OrderYear