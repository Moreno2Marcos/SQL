/*
OBJECTIVE: Display an error number & an error message
*/

-- (1) create a variable to originate an error
DECLARE @num VARCHAR(20) = '0';

-- (2) deal with the error introduced by (1)
BEGIN TRY
    PRINT 5. / CAST(@num AS NUMERIC(10, 4));  -- intentionally divide by zero!
END TRY
BEGIN CATCH
    PRINT 'Error number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error messagen: ' + ERROR_MESSAGE();
END CATCH
GO

/* changing the kind of data of the variable @num */

-- (1) create a variable to originate an error
DECLARE @num VARCHAR(20) = 'A';

-- (2) deal with the error introduced by (1)
BEGIN TRY
    PRINT 5. / CAST(@num AS NUMERIC(10, 4));  -- error here!
END TRY
BEGIN CATCH
    PRINT 'Error number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error messagen: ' + ERROR_MESSAGE();
END CATCH
GO

/* changing the kind of data of the variable @num */

-- (1) create a variable to originate an error
DECLARE @num VARCHAR(20) = '1000000000';

-- (2) deal with the error introduced by (1)
BEGIN TRY
    PRINT 5. / CAST(@num AS NUMERIC(10, 4));  -- error here!
END TRY
BEGIN CATCH
    PRINT 'Error number: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Error messagen: ' + ERROR_MESSAGE();
END CATCH
GO