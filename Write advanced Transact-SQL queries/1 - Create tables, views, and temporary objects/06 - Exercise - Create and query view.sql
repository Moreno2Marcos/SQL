USE adventureworks
GO

-- (1) retrive all products that are classified as road bikes
SELECT
	ProductID
	,Name
	,ListPrice
FROM SalesLT.Product
WHERE ProductCategoryID = 6;
GO

-- (2) create a view for all road bikes
CREATE VIEW SalesLT.vProductRoadBikes AS
	SELECT
		ProductID
		,Name
		,ListPrice
	FROM SalesLT.Product
	WHERE ProductCategoryID = 6

-- (3) get a list of any road bikes which price are less than 1000
SELECT
	ProductID
	,Name
	,ListPrice
FROM SalesLT.vProductRoadBikes
WHERE ListPrice < 1000