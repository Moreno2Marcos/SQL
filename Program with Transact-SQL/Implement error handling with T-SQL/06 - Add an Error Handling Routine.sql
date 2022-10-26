/*
OBJECTIVE: Add an Error Handling Routine
*/

-- lead with an error type of conversion (varchar to numeric)
DECLARE @num varchar(20) = 'A';

BEGIN TRY
    PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
    EXECUTE dbo.GetErrorInfo;
    
    IF ERROR_NUMBER() = 8134
        BEGIN
            PRINT 'Handling devision by zero...';
        END
    ELSE 
        BEGIN
            PRINT 'Throwing original error';
            THROW;
        END;
END CATCH;
