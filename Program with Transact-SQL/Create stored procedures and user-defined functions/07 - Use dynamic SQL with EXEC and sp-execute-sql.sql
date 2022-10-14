-- create a Dynamic SQL using EXECUTE
DECLARE @sqlString AS VARCHAR(1000);
    SET @sqlString =
        'SELECT CustomerID, FirstName, LastName
        FROM SalesLT.Customer;'
EXEC(@sqlString)
GO
-- create a Dynamic SQL using "sp_executesql"
DECLARE @sqlString1 NVARCHAR(1000);
SET @sqlString1 =
    N'SELECT CustomerID, FirstName, LastName
    FROM SalesLT.Customer;'
EXECUTE sp_executesql @sqlString1;
GO
-- Other way to use "sp_executesql"
EXECUTE sp_executesql
    N'SELECT CustomerID, FirstName, LastName
    FROM SalesLT.Customer;'
GO
-- if you what to pass a parameter so...
EXECUTE sp_executesql   
          N'SELECT CustomerID, FirstName, LastName
          FROM SalesLT.Customer WHERE CustomerID = @CustomerID',  
          N'@CustomerID INT',  
          @CustomerID = 30;
GO