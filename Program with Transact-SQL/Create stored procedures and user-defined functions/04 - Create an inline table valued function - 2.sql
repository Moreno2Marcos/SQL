-- this fucntion get the total freight by customer and
-- by year
CREATE FUNCTION SalesLT.GetFreightByCustomer
    (@orderyear AS INT) 
RETURNS TABLE
AS
RETURN
    SELECT
        CustomerID, SUM(Freight) AS totalFreight
    FROM SalesLT.SalesOrderHeader
    WHERE YEAR(OrderDate) = @orderyear
    GROUP BY CustomerID;
GO

-- call the function and set year = 2008
SELECT *
FROM SalesLT.GetFreightByCustomer(2008)