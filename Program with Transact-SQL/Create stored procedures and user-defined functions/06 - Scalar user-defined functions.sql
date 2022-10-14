/* create a scalar user-defined function to get the product
 list price for a specific product on a certain day */
CREATE FUNCTION SalesLT.getListPrice
    (@ProductID [int], @OrderDate [datetime])
RETURNS [money] 
AS 
BEGIN
    DECLARE @ListPrice money;
    SELECT @ListPrice = P.ListPrice
    FROM [SalesLT].[SalesOrderHeader] AS SOH
    INNER JOIN [SalesLT].[SalesOrderDetail] AS SOD
    ON SOH.SalesOrderID = SOD.SalesOrderID
    INNER JOIN [SalesLT].[Product] AS P
    ON P.ProductID = SOD.ProductID
    RETURN @ListPrice;
END
GO
/* call the SUDF */
SELECT SalesLT.getListPrice(981, '2008-06-01') AS ListPrice