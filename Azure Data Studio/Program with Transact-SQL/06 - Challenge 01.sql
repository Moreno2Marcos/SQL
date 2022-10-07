/*
Challenge 1:
You are developing a new T-SQL application that needs
to temporarily store values drawn from the database, 
and depending on their values, display the outcome to 
the user.
*/

DECLARE 
    @salesOrderNUmber nvarchar(30),
    @customerID int;

SET @customerID = 29847;

SET @salesOrderNUmber = 
            (SELECT salesOrderNumber 
            FROM SalesLT.SalesOrderHeader 
            WHERE CustomerID = @customerID)

SELECT @salesOrderNUmber as OrderNumber;