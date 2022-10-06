-- retrieve a name and last name from a AdventureWorks DataBase
 
 DECLARE    
     @cusName NVARCHAR(30),
     @cusId INT;
 
 SET @cusId = 2;
 
 SET @cusName =   
    (SELECT            
        FirstName + N' ' + LastName       
    FROM SalesLT.Customer      
    WHERE CustomerID = @cusId)
GO  
SELECT @cusName AS customer

-- SELECT TOP(5) * FROM SalesLT.Customer;