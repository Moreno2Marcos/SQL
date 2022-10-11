-- this procedure finds the top 10 products more expensive
CREATE PROCEDURE SalesLT.TopProducts AS
    SELECT TOP (10)
        Name
        ,ListPrice
    FROM SalesLT.Product
    ORDER BY ListPrice DESC;
GO

-- now , we can excecute our SP
EXECUTE SalesLT.TopProducts;
GO

-- we can amend OUR stored procedure created lines before
-- This time we want to get the top 100 product more expensive
ALTER PROCEDURE SalesLT.TopProducts AS
    SELECT TOP (100) 
        Name
        ,ListPrice
    FROM SalesLT.Product
    ORDER BY ListPrice DESC;
GO

/*
ALTERNATIVILY...
*/

-- 1 drop procedure
DROP PROCEDURE SalesLT.TopProducts;
GO
/* 2 recreate the procedure. This time we want to get the top 100
 product more expensive */
CREATE PROCEDURE SalesLT.TopProducts AS
    SELECT TOP (100)
        Name
        ,ListPrice
    FROM SalesLT.Product
    ORDER BY ListPrice DESC;
GO





