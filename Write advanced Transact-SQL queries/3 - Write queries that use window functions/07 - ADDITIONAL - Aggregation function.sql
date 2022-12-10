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

select 
	C.CategoryName
	,SC.SubCategoryName
	,P.Name as ProductName
	,P.ProductID
	,D.OrderQty
	,D.UnitPrice
	,D.LineTotal
	,SUM(D.LineTotal) OVER (PARTITION BY P.Name) AS TotalbySubCategory
from #Category as C
inner join #SubCategory as SC
	on C.CategoryID = SC.CategoryID
inner join SalesLT.Product as P
	on P.ProductCategoryID = SC.ProductCategoryID
inner join SalesLT.SalesOrderDetail as D
	on D.ProductID = P.ProductID
order by 1, 2, 3