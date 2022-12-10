USE adventureworks
GO

/* get a list of products in which we have a column that calculate 
   the whole weight from products according to their colors */
SELECT
	Name
	,ProductNumber
	,Color
	,Weight
	,SUM(Weight) OVER(PARTITION BY Color) AS WeightByColor
FROM SalesLT.Product
ORDER BY ProductNumber;

/* discover what colors are more heavy */
SELECT DISTINCT
	Color
	,SUM(Weight) OVER(PARTITION BY Color) AS WeightByColor
FROM SalesLT.Product
WHERE Weight is not null and Color is not null
ORDER BY WeightByColor DESC;