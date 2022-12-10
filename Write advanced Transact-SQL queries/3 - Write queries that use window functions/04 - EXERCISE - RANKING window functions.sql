use adventureworks
GO

/*
	get a list of ranks by total sales aassociated with each category
*/
WITH cteSales AS (
    SELECT 
		C.Name AS 'Category'
		,CAST(SUM(D.LineTotal) AS numeric(12, 2)) AS 'SalesValue'
    FROM SalesLT.SalesOrderDetail AS D
    INNER JOIN SalesLT.Product AS P
        ON D.ProductID = P.ProductID
    INNER JOIN SalesLT.ProductCategory AS C
        ON P.ProductCategoryID = C.ProductCategoryID
    WHERE C.ParentProductCategoryID = 4
    GROUP BY C.Name
)
SELECT 
	Category
	,SalesValue
	,RANK() OVER(ORDER BY SalesValue DESC) AS 'Rank'
FROM cteSales
ORDER BY Category;