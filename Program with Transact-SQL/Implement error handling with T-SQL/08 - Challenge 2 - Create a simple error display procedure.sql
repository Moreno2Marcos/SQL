/*
Challenge 2: Create a simple error display procedure

Error messages and error handling are essential for good code. Your manager has asked you to
develop a common error display procedure. Use this sample code as your base.

DECLARE @num varchar(20) = 'Challenge 2';
PRINT 'Casting: ' + CAST(@num AS numeric(10,4));
*/

/* proposed solution */

-- (1) catch the error
DECLARE @num varchar(20) = 'Challenge 2';
BEGIN TRY
    PRINT 'Casting: ' + CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
END CATCH
GO

-- (2) create a stored procedure
CREATE PROCEDURE dbo.DisplayErrorDetails AS
    PRINT 'Error Details:'
    PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error Message: ' + ERROR_MESSAGE();
    PRINT 'Error Severity: ' + ERROR_SEVERITY();
GO

-- (3) diplay error information
DECLARE @num varchar(20) = 'Challenge 2';
BEGIN TRY
    PRINT 'Casting: ' + CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
    EXECUTE dbo.DisplayErrorDetails
END CATCH
GO