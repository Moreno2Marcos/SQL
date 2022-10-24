/*
OBJECTIVE: Rethrow the Existing Error Back to a Client
*/

/* (1) use of THROW keyword, which can be catch and process it
 in a client applciation or used within the program by other
 Proc or code block */
DECLARE @num varchar(20) = '0';

BEGIN TRY
    PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
    EXECUTE dbo.GetErrorInfo; 
    THROW;
END CATCH;