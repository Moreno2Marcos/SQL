USE adventureworks
GO

/* a  very simple manner to demonstrate how LEAD and LAG offset window functions
  works */
SELECT 
	ListPrice
	,LEAD(ListPrice, 2, 0) OVER(ORDER BY ListPrice) AS LEAD
	,LAG(ListPrice, 2, 0) OVER(ORDER BY ListPrice) AS LAG
FROM SalesLT.Product

