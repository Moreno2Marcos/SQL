-- my solution
select
	SC.ProductCategoryID as ProductCategoryID
	,SC.ParentProductCategoryID as CategoryID
	,name as SubCategoryName
into #SubCategory
from SalesLT.ProductCategory as SC
where SC.ParentProductCategoryID is not null

select
	C.ProductCategoryID as CategoryID
	,C.name as CategoryName
into #Category
from SalesLT.ProductCategory as C
where C.ParentProductCategoryID is null

select
	C.CategoryName
	,SC.SubCategoryName
	,COUNT(P.Name) OVER (PARTITION BY C.CategoryName) as 'ProductCount'
from #SubCategory as SC
inner join SalesLT.Product as P
on SC.ProductCategoryID = P.ProductCategoryID
inner join #Category as C
on C.CategoryID = SC.CategoryID
inner join SalesLT.SalesOrderDetail as D
on D.ProductID = P.ProductID
order by 1

-- MS solution
SELECT C.Name AS 'Category', SC.Name AS 'Subcategory', COUNT(P.Name) OVER (PARTITION BY C.Name) AS 'ProductCount'
FROM SalesLT.SalesOrderDetail AS D
    INNER JOIN SalesLT.Product AS P
        ON D.ProductID = P.ProductID
    INNER JOIN SalesLT.ProductCategory AS SC
        ON P.ProductCategoryID = SC.ProductCategoryID
    INNER JOIN SalesLT.ProductCategory AS C
        ON SC.ParentProductCategoryID = C.ProductCategoryID
    GROUP BY C.Name, SC.Name, P.Name
    ORDER BY C.Name, SC.Name, P.Name;