SELECT
	C.Name AS 'Category'
	,SC.Name AS 'Subcategory'
	,COUNT(SC.Name) OVER (PARTITION BY C.Name) AS 'SubcatCount'
FROM SalesLT.SalesOrderDetail AS D
INNER JOIN SalesLT.Product AS P
    ON D.ProductID = P.ProductID
INNER JOIN SalesLT.ProductCategory AS SC
    ON P.ProductCategoryID = SC.ProductCategoryID
INNER JOIN SalesLT.ProductCategory AS C
    ON SC.ParentProductCategoryID = C.ProductCategoryID
GROUP BY C.Name, SC.Name
ORDER BY C.Name, SC.Name;