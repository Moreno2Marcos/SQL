/*
Challenge 1: Catch errors and display only valid records

The marketing manager is using the following T-SQL query, but they are getting
unexpected results. They have asked you to make the code more resilient, 
to stop it crashing and to not display duplicates when there is no data.
*/

DECLARE @customerID AS INT = 30110;
DECLARE @fname AS NVARCHAR(20);
DECLARE @lname AS NVARCHAR(30);
DECLARE @maxReturns AS INT = 1; 

WHILE @maxReturns <= 10
    BEGIN
        SELECT @fname = FirstName, @lname = LastName FROM SalesLT.Customer
            WHERE CustomerID = @CustomerID;
        PRINT @fname + N' ' + @lname;
        SET @maxReturns += 1;
        SET @CustomerID += 1;
    END;
GO
------------------------------

-- my FIRST solution
DECLARE @customerID AS INT = 30110;
DECLARE @fname AS NVARCHAR(20);
DECLARE @lname AS NVARCHAR(30);
DECLARE @maxReturns AS INT = 1; 

WHILE @maxReturns <= 10
    BEGIN
        IF (SELECT CustomerID FROM SalesLT.Customer WHERE customerID = @CustomerID) IS NOT NULL
            BEGIN
                SELECT @fname = FirstName, @lname = LastName FROM SalesLT.Customer
                    WHERE CustomerID = @CustomerID;
                PRINT CAST(@customerID AS VARCHAR(20)) + N' ' + @fname + N' ' + @lname;
            END
        SET @maxReturns += 1;
        SET @CustomerID += 1;
    END;
GO

----------------------

-- microsoft's solution
DECLARE @customerID AS INT = 30110;
DECLARE @fname AS NVARCHAR(20);
DECLARE @lname AS NVARCHAR(30);
DECLARE @maxReturns AS INT = 1; 

WHILE @maxReturns <= 10
    BEGIN
        BEGIN TRY
            SELECT @fname = FirstName, @lname = LastName 
            FROM SalesLT.Customer
            WHERE CustomerID = @CustomerID;

            IF @@ROWCOUNT > 0
                PRINT CAST(@customerID AS VARCHAR(20)) + N' ' + @fname + N' ' + @lname;
        END TRY
        BEGIN CATCH
            PRINT 'Unable to run query'
        END CATCH
        
        SET @maxReturns += 1;
        SET @CustomerID += 1;
    END;
GO