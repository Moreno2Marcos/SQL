-- create a procedure
CREATE PROCEDURE SalesLT.TopProducts AS
    SELECT TOP (10)
        Name
        ,ListPrice
    FROM SalesLT.Product
    ORDER BY ListPrice DESC;
GO

-- excecute the procedure
EXECUTE SalesLT.TopProducts;
GO

-- modify the procedure to recieve input parameter
ALTER PROCEDURE SalesLT.TopProducts
    @ProductCategoryID INT
AS
    SELECT TOP (10)
        Name
        ,ListPrice
        ,ProductCategoryID
    FROM SalesLT.Product
    WHERE ProductCategoryID = @ProductCategoryID
    ORDER BY 2 DESC;
GO
-- execute the modified procedure (pass parameter by "name")
EXEC SalesLT.TopProducts @ProductCategoryID = 18;

-- execute the modified procedure (pass parameter by "position")
EXEC SalesLT.TopProducts 41;