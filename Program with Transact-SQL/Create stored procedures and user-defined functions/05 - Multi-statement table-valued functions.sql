/* create a multistatement TVF to get the status of the+
 orders passing the ID of a customer */
CREATE FUNCTION SalesLT.mstvf_OrderStatus 
    (@CustomerID INT)
RETURNS 
@Results TABLE 
    (CustomerID int, FirstName nvarchar(150), OrderDate datetime, ShipDate datetime
    ,DueDate datetime)
AS
BEGIN
    INSERT INTO @Results
    SELECT C.CustomerID, C.FirstName, SOH.OrderDate, SOH.ShipDate, SOH.DueDate
    FROM SalesLT.Customer AS C
    INNER JOIN SalesLT.SalesOrderHeader AS SOH 
        ON C.CustomerID = SOH.CustomerID
    WHERE C.CustomerID = @CustomerID
RETURN
END
GO
/* if you want to modify you fucntion tou must drop it
   firstable */
DROP FUNCTION SalesLT.mstvf_OrderStatus;
GO 
-- we can call our MSTVF for a custumer with ID = 30019
SELECT * FROM SalesLT.mstvf_OrderStatus(30019)


--- trying to call the table @Results!!!
SELECT
    SOH.OrderDate
    ,SOH.Freight
    ,R.*
FROM @Results AS R
INNER JOIN SalesLT.SalesOrderHeader AS SOH
    ON R.CustomerID = OS.CustomerID

PRINT @Results
------