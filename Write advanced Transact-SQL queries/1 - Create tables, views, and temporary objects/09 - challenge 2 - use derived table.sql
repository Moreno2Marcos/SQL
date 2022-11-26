/*
CHALLENGE 2: use a derived table
*/

USE adventureworks
GO

/* create a table with a classification based on the weight of the
products */
SELECT
	DerivedTable.ProductID
	,DerivedTable.Name
	,DerivedTable.Weight
	,DerivedTable.ListPrice
FROM
	( SELECT
		ProductID
		,Name
		,Weight
		,CASE
			WHEN Weight > 1000 THEN N'heavy'
			WHEN Weight IS NULL THEN N'unknown'
			ELSE N'normal'
		 END AS WeightType
		,ListPrice
	 FROM SalesLT.Product ) AS DerivedTable
 WHERE DerivedTable.WeightType = N'heavy' AND DerivedTable.ListPrice > 2000