/*
OBJECTIVE: Create a stored procedure to display an error message
*/

--(1) create a SP with several kinds of error information
CREATE PROCEDURE dbo.GetErrorInfo AS
    PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error Message: ' + ERROR_MESSAGE();
    PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(10));
    PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(10));
    PRINT 'Error Line: ' + CAST(ERROR_LINE() AS VARCHAR(10));
    PRINT 'Error Proc: ' + COALESCE(ERROR_PROCEDURE(), 'Not within procedure');

-- (2) use the SP created previously
DECLARE @num varchar(20) = '0';

BEGIN TRY
    PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
    EXECUTE dbo.GetErrorInfo;
END CATCH;