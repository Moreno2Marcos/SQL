-- create a inline table-valued function
CREATE FUNCTION SalesLT.ProductsListPrice(@cost money)
RETURNS TABLE
AS
RETURN
    SELECT ProductID, Name, ListPrice
    FROM SalesLT.Product
    WHERE ListPrice > @cost;
GO

-- call the fucntion created before
SELECT Name, ListPrice
FROM SalesLT.ProductsListPrice(500)
ORDER BY 2 DESC;
GO