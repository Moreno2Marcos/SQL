select
	C.ProductCategoryID as CategoryID
	,C.name as CategoryName
into #Category
from SalesLT.ProductCategory as C
where C.ParentProductCategoryID is null

select
	SC.ProductCategoryID as ProductCategoryID
	,SC.ParentProductCategoryID as CategoryID
	,name as SubCategoryName
into #SubCategory
from SalesLT.ProductCategory as SC
where SC.ParentProductCategoryID is not null

WITH CTE AS (
	select 
		C.CategoryName AS CategoryName
		,SC.SubCategoryName AS SubCategoryName
		,P.Name as ProductName
		,SUM(D.LineTotal) OVER (PARTITION BY P.Name) AS TotalbySubCategory
	from #Category as C
	inner join #SubCategory as SC
		on C.CategoryID = SC.CategoryID
	inner join SalesLT.Product as P
		on P.ProductCategoryID = SC.ProductCategoryID
	inner join SalesLT.SalesOrderDetail as D
		on D.ProductID = P.ProductID )
SELECT
	CategoryName
	,SubCategoryName
	,ProductName
	,TotalbySubCategory
	,RANK() OVER (PARTITION BY CategoryName ORDER BY TotalbySubCategory) AS RANK
	,DENSE_RANK() OVER (PARTITION BY CategoryName ORDER BY TotalbySubCategory) AS DENSE_RANK
FROM CTE

-- Microsoft' Solution 
WITH sales AS
(
    SELECT C.Name AS 'Category', SC.Name AS 'Subcategory', CAST(SUM(D.LineTotal) AS numeric(12, 2)) AS 'SalesValue'
    FROM SalesLT.SalesOrderDetail AS D
    INNER JOIN SalesLT.Product AS P
        ON D.ProductID = P.ProductID
    INNER JOIN SalesLT.ProductCategory AS SC
        ON P.ProductCategoryID = SC.ProductCategoryID
    INNER JOIN SalesLT.ProductCategory AS C
        ON SC.ParentProductCategoryID = C.ProductCategoryID
        GROUP BY C.Name, SC.Name
)
SELECT Category, Subcategory, SalesValue, RANK() OVER(PARTITION BY Category ORDER BY SalesValue DESC) AS 'Rank'
FROM sales
    ORDER BY Category, SalesValue DESC;