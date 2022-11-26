USE adventureworks
GO

-- (1) calculate whether the price of a product is considered high or normal
 SELECT 
	ProductID
	,Name
	,ListPrice,
    CASE 
		WHEN ListPrice > 1000 THEN N'High' 
		ELSE N'Normal' 
	END AS PriceType
 FROM SalesLT.Product;

 -- (2) filter only products which prices are considered high
 SELECT 
	DerivedTable.ProductID
	,DerivedTable.Name
	,DerivedTable.ListPrice
 FROM
     ( -- (1)
	   SELECT
       ProductID, Name, ListPrice,
	   CASE
	       WHEN ListPrice > 1000 THEN N'High'
		   ELSE N'Normal' 
	   END AS PriceType
       FROM SalesLT.Product ) AS DerivedTable
 WHERE DerivedTable.PriceType = N'High';